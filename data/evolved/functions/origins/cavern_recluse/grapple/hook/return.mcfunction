
# check if at player -> run catch
# execute as hook facing player positioned 2 blocks forward run return

execute if entity @p[tag=ev.this,distance=..2] run function evolved:origins/cavern_recluse/grapple/hook/catch
scoreboard players remove #raycast ev.temp 25

execute if score #raycast ev.temp matches 0 run tp ~ ~ ~
execute if score #catch ev.temp matches 0 if score #raycast ev.temp matches 1.. positioned ^ ^ ^0.25 run function evolved:origins/cavern_recluse/grapple/hook/return
