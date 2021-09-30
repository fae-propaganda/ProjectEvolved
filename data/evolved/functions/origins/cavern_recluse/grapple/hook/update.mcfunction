
# Each tick:
# check if distance met
# on fail:
#   raycast -> hit_block
# on success:
#   return -> catch.mcfunction



execute store result score #success ev.temp if score @e[type=marker,tag=ev.grapplehook,tag=ev.this.grapplehook,sort=nearest,limit=1] ev.targetdist matches 1..
scoreboard players set #raycast ev.temp 200
scoreboard players set #hit ev.temp 0
execute if score #success ev.temp matches 1 as @e[type=marker,tag=ev.grapplehook,tag=ev.this.grapplehook,sort=nearest,limit=1] at @s positioned ^ ^ ^0.25 run function evolved:origins/cavern_recluse/grapple/hook/raycast
scoreboard players set #catch ev.temp 0
execute if score #success ev.temp matches 0 as @e[type=marker,tag=ev.grapplehook,tag=ev.this.grapplehook,sort=nearest,limit=1] at @s facing entity @p[tag=ev.this] eyes positioned ^ ^ ^0.25 run function evolved:origins/cavern_recluse/grapple/hook/return





#execute if score @s evolved.grapplehook.distance matches ..-1 as @a[tag=grappling] if score @s evolved.id = @e[type=marker,tag=anchor,sort=nearest,limit=1] run

#execute as @e[type=marker,tag=anchor,sort=nearest,limit=1] facing @p[tag=ev.this.grapplehook] eyes positioned ^ ^ ^0.5 @s ~ ~ ~
