execute unless entity @e[tag=pe.cavern_recluse.inject] at @e[type=minecraft:area_effect_cloud,tag=evolved.cavern_recluse.marker] run function evolved:powers/cavern_recluse/inject/summon

execute if entity @e[tag=pe.cavern_recluse.inject] run kill @e[type=minecraft:area_effect_cloud,tag=evolved.cavern_recluse.marker]

execute at @e[tag=pe.cavern_recluse.inject] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["evolved.cavern_recluse.marker"]}
