# POWERS/CAVERN_RECLUSE/GRAPPLE/START

say Hook Launched!

kill @e[type=marker,tag=ev.grapplehook]

summon marker ~ ~ ~ {Tags:["ev.grapplehook","ev.new"]}
scoreboard players set @e[type=marker,tag=ev.new,sort=nearest,limit=1] ev.targetdist 2000
execute as @e[type=marker,tag=ev.new,sort=nearest,limit=1] run scoreboard players operation @s ev.id = @p ev.id
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=ev.new,sort=nearest,limit=1] rotated as @p run tp @s ~ ~ ~ ~ ~
tag @e[type=marker,tag=ev.new,sort=nearest,limit=1] remove ev.new

tag @s add ev.cavern_recluse.grapple.active
tag @s add ev.cavern_recluse.grapple.hook
