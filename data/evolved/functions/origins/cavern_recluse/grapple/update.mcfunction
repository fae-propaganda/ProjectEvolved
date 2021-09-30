# POWERS/CAVERN_RECLUSE/GRAPPLE/UPDATE

# Tag an armor stand
execute if entity @s[tag=ev.cavern_recluse.grapple.active] as @e[type=marker,tag=ev.grapplehook] if score @s ev.id = @p ev.id run tag @s add ev.this.grapplehook

execute if entity @s[tag=ev.cavern_recluse.grapple.hook] run function evolved:origins/cavern_recluse/grapple/hook/update

#execute if entity @s[tag=ev.cavern_recluse.grapple.cancel] r
execute if entity @s[tag=ev.cavern_recluse.grapple.propel] run function evolved:origins/cavern_recluse/grapple/propel/update

execute if entity @s[tag=ev.cavern_recluse.grapple.active] facing entity @e[type=marker,tag=ev.grapplehook,tag=ev.this.grapplehook,sort=nearest,limit=1] feet run function evolved:origins/cavern_recluse/grapple/render_web

# Remove Tag
tag @e[type=marker,tag=ev.grapplehook,tag=ev.this.grapplehook,sort=nearest,limit=1] remove ev.this.grapplehook
