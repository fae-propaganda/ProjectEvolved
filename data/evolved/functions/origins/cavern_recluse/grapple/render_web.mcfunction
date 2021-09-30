# NOTE: run ev.this.grapplehook from update

particle minecraft:dust 1 1 1 0.5

# execute if not at anchor positioned forward run function render_web
execute unless entity @e[type=minecraft:marker,tag=ev.this.grapplehook,sort=nearest,limit=1,distance=..1] positioned ^ ^ ^0.25 run function evolved:origins/cavern_recluse/grapple/render_web
