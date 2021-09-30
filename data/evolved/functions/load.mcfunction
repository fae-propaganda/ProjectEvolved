scoreboard players set evolved load.status 1
schedule function evolved:tick 1t

tellraw @a "Project:Evolved has reloaded."
kill _halo

scoreboard objectives add ev.delay dummy
scoreboard objectives add ev.id dummy
scoreboard objectives add ev.temp dummy
scoreboard objectives add ev.targetdist dummy
