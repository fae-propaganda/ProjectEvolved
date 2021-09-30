# Set power/grapple active resource to 0
# stop motion
# trigger long cooldown
# kill anchor

#schedule clear evolved:origins/cavern_recluse/grapple/propel/start
say cancel attempt
#say @s
resource set @s evolved:cavern_recluse/grapple_toggle_motion 0
kill @e[type=marker,tag=ev.grapplehook,tag=ev.this.grapplehook,sort=nearest,limit=1]

tag @s remove ev.cavern_recluse.grapple.propel
tag @s remove ev.cavern_recluse.grapple.active
tag @s remove ev.cavern_recluse.grapple.cancel
resource change @s evolved:cavern_recluse/grapple_display -1
resource set @s evolved:cavern_recluse/grapple_long_cooldown 0
