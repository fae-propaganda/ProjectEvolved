execute as @e[type=marker,tag=anchor,limit=1,sort=nearest] if score @s evolved.id = @p evolved.id as @p at @s facing entity @e[type=marker,tag=anchor,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
function rx.playerdb:api/get_self
data modify storage rx:io playerdb.player.data.blair.evolved.GrappleRotation set from entity @s Rotation
function rx.playerdb:api/save_self

power grant @s evolved:universal/fling

schedule function evolved:powers/cavern_recluse/grapple/stop_grapple 2s
