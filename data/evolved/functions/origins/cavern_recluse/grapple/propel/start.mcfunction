
say propel start

scoreboard players set @s ev.delay 5
tag @s add ev.cavern_recluse.grapple.propel
data modify storage rx:io playerdb.player.data.blair.evolved.current_position set value []
resource set @s evolved:cavern_recluse/grapple_toggle_motion 1
