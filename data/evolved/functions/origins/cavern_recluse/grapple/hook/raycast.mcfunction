# check for hit_block
# remove distance travelled
# if not hit block run raycast again

execute unless block ~ ~ ~ #evolved:air run function evolved:origins/cavern_recluse/grapple/hook/hit_block

scoreboard players remove #raycast ev.temp 25

execute if score #raycast ev.temp matches 0 run scoreboard players remove @s ev.targetdist 200
execute if score #raycast ev.temp matches 0 run tp ~ ~ ~
execute if score #hit ev.temp matches 0 if score #raycast ev.temp matches 1.. positioned ^ ^ ^0.25 run function evolved:origins/cavern_recluse/grapple/hook/raycast
