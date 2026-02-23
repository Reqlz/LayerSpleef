# Admin Guide Book Command (1.21.11)

Use this command to give yourself an admin/operator quick-control book.

```mcfunction
/give @s written_book[written_book_content={title:"LayerSpleef Admin Guide",author:"LayerSpleef",pages:['{"text":"LayerSpleef Admin Guide\\n\\n","color":"aqua","bold":true,"extra":[{"text":"[Admin Help]\\n","color":"green","click_event":{"action":"run_command","command":"/function world:game/debug/admin/help"}},{"text":"[Admin Status]\\n","color":"yellow","click_event":{"action":"run_command","command":"/function world:game/debug/admin/status"}},{"text":"[Force Start]\\n","color":"gold","click_event":{"action":"run_command","command":"/function world:game/debug/admin/force_start"}},{"text":"[Force End]\\n","color":"red","click_event":{"action":"run_command","command":"/function world:game/debug/admin/force_end"}}]}','{"text":"State + Recovery\\n\\n","color":"gold","bold":true,"extra":[{"text":"[Clear Stuck]\\n","color":"light_purple","click_event":{"action":"run_command","command":"/function world:game/debug/admin/clear_stuck"}},{"text":"[Toggle Solo]\\n","color":"aqua","click_event":{"action":"run_command","command":"/function world:game/debug/admin/toggle_solo"}},{"text":"[Force Split Teams]\\n","color":"light_purple","click_event":{"action":"run_command","command":"/function world:game/debug/admin/force_split_teams"}},{"text":"\\nUse /function world:game/debug/admin/help for full control menu.","color":"gray"}]}']}]
```

## Core Admin Commands

- Full admin menu:
  - `/function world:game/debug/admin/help`
- Status snapshot:
  - `/function world:game/debug/admin/status`
- Emergency recover to idle:
  - `/function world:game/debug/admin/clear_stuck`
- Start/stop quickly:
  - `/function world:game/debug/admin/force_start`
  - `/function world:game/debug/admin/force_end`

## Note

This guide intentionally keeps clickables to common controls. Use the admin help menu for full phase/timer/lives/sidebar operations.
