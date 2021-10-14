tag @s add ray
scoreboard players set #hit temp.raycast 0
scoreboard players set #distance temp.raycast 0
execute anchored eyes positioned ^ ^ ^0.1 run function evolved:powers/cavern_recluse/grapple/detect/ray
execute if score #hit temp.raycast matches 0 if score #distance temp.raycast matches 201.. run say Raycast failed.
tag @s remove ray
