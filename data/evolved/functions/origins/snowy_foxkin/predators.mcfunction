tag @s add ev.this
execute as @e[type=wolf,distance=..18] unless data entity @s Owner unless data entity @s AngryAt run data modify entity @s AngerTime set value 600
execute as @e[type=wolf,distance=..18] unless data entity @s Owner unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[tag=ev.this] UUID

execute as @e[type=polar_bear,distance=..16] unless data entity @s AngryAt run data modify entity @s AngerTime set value 600
execute as @e[type=polar_bear,distance=..16] unless data entity @s AngryAt run data modify entity @s AngryAt set from entity @p[tag=ev.this] UUID
tag @s remove ev.this
