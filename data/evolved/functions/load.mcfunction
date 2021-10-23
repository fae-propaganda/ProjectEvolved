scoreboard players set evolved load.status 1

#Add scoreboard objectives
scoreboard objectives add ev.delay dummy
scoreboard objectives add ev.id dummy
scoreboard objectives add ev.temp dummy
scoreboard objectives add ev.targetdist dummy

#Set max id to 0
execute unless score $max_id ev.id = $max_id ev.id run scoreboard players set $max_id ev.id 0

tellraw @a "Project:Evolved has reloaded."

origin gui @a

#Start Tick Loop
schedule function evolved:tick 1t