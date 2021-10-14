scoreboard players set #hit temp.raycast 1
execute positioned ^ ^ ^-0.5 if block ~ ~ ~ #evolved:air run setblock ~ ~ ~ origins:temporary_cobweb
say Block found.
function evolved:powers/cavern_recluse/grapple/detect/summon_anchor
