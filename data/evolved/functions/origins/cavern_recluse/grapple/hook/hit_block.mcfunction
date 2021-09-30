# summon anchor
# tp rotated towards anchor
# toggle motion power on

scoreboard players set #hit ev.temp 1
say Block found.

execute positioned ~ ~ ~ run tp ~ ~ ~

tag @p[tag=ev.this] remove ev.cavern_recluse.grapple.hook

execute as @p[tag=ev.this] at @s run function evolved:origins/cavern_recluse/grapple/propel/start
