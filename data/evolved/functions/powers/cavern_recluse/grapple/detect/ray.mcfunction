particle dust 1 1 1 0.25
execute unless block ~ ~ ~ #evolved:air run function evolved:powers/cavern_recluse/grapple/detect/hit_block
scoreboard players add #distance temp.raycast 5
execute if score #hit temp.raycast matches 0 if score #distance temp.raycast matches ..200 positioned ^ ^ ^0.5 run function evolved:powers/cavern_recluse/grapple/detect/ray
