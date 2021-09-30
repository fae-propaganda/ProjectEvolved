kill @e[type=marker,tag=anchor]
execute align xyz positioned ~.5 ~1.5 ~.5 run summon marker ~ ~ ~ {Tags:["new","anchor"]}
scoreboard players set @e[type=marker,tag=anchor,sort=nearest,limit=1] evolved.id 1
function evolved:powers/cavern_recluse/grapple/start_grapple
