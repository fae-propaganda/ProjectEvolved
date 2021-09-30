# kill hook
# remove cavern_recluse.grapple.active
# remove cavern_recluse.grapple.hook
# turn off grapple power active display
# trigger grapple power short cooldown

scoreboard players set #catch ev.temp 1
kill @e[type=marker,tag=ev.this.grapplehook,sort=nearest,limit=1]
say Caught hook

tag @p[tag=ev.this] remove ev.cavern_recluse.grapple.active
tag @p[tag=ev.this] remove ev.cavern_recluse.grapple.hook

resource change @p[tag=ev.this] evolved:cavern_recluse/grapple_display -1
resource set @p[tag=ev.this] evolved:cavern_recluse/grapple_short_cooldown 0
