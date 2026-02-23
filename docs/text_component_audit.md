# 1.21.11 Text Component Audit

This datapack targets Minecraft `1.21.11` text-component schema.

## Required Schema

- `clickEvent` -> `click_event`
- `hoverEvent` -> `hover_event`
- For `run_command` / `suggest_command`: `value` -> `command`
- For `open_url`: `value` -> `url`
- For `change_page`: `value` -> `page` (integer)
- For `show_text`: `contents` -> `text`

## Must-Return-Zero Checks

Run these in repo root:

```bash
rg -n 'clickEvent|hoverEvent' data
rg -n '"value"\s*:' data
rg -n '"contents"\s*:' data
```

Expected: no output.

## Positive Presence Checks

```bash
rg -n 'click_event|hover_event' data
rg -n '"command"\s*:' data
```

Expected: output in interactive tellraw/book component locations.

## Spot-Check Runtime Commands

```mcfunction
/function world:game/debug/help_player
/function world:game/debug/admin/help
/function world:game/paused_alone_prompt
```

Verify clickable entries execute expected commands.

## External World Validation (Not In Repo Files)

Check these manually in-world:

- Command blocks with tellraw/title JSON.
- Existing written books/items previously generated.
- Signs or any custom text-bearing content with click actions.

If any still use legacy keys (`clickEvent`, `value`, `hoverEvent`, `contents`), regenerate/update them using 1.21.11 keys.

## Regression Checklist For Future Edits

When any PR/edit touches tellraw/title/book JSON:

1. Run the three zero-result checks.
2. Spot-test at least one player-facing clickable and one admin clickable in-game.
3. Recheck any command blocks/books created outside datapack files.
