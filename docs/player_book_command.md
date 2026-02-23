# Player Guide Book Command (1.21.11)

Use this command to give yourself a player-facing quickstart book with safe clickables.

```mcfunction
/give @s written_book[written_book_content={title:"LayerSpleef Player Guide",author:"LayerSpleef",pages:['{"text":"LayerSpleef Player Guide\\n\\n","color":"gold","bold":true,"extra":[{"text":"[Show Status]\\n","color":"green","click_event":{"action":"run_command","command":"/function world:game/debug/player_status"}},{"text":"[Emergency Exit]\\n","color":"red","click_event":{"action":"run_command","command":"/trigger gs_player_ctrl set 1"}},{"text":"[Continue Solo]\\n","color":"yellow","click_event":{"action":"run_command","command":"/trigger gs_player_ctrl set 2"}},{"text":"\\nUse Continue Solo only when the paused-alone prompt appears.","color":"gray"}]}']}]
```

## What Players Need To Know

- Show status:
  - `/function world:game/debug/player_status`
- Emergency self-exit:
  - `/trigger gs_player_ctrl set 1`
- Continue solo (only valid when prompted after opponent exits):
  - `/trigger gs_player_ctrl set 2`

## If Your Server Rejects The `/give` Syntax

Use the same page JSON and keys (`click_event`, `command`) in your preferred book builder for `1.21.11`.
