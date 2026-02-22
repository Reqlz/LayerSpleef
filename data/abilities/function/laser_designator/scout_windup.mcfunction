function abilities:laser_designator/scout_airstrike_warning
execute run summon armor_stand ~ ~20 ~ {Tags:["airstrike"], Invisible:false, Invulnerable:true, NoGravity:true}
schedule function abilities:laser_designator/scout_airstrike 1s