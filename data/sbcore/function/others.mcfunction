#船
execute at @e[type=minecraft:boat,tag=!sbcore] run summon minecraft:minecart ~ ~ ~ {Tags:["sbcore"]}
execute at @e[type=minecraft:boat,tag=!sbcore] as @e[type=minecraft:minecart,tag=sbcore,sort=nearest,limit=1] run data modify entity @s Rotation set from entity @e[type=minecraft:boat,sort=nearest,limit=1] Rotation
execute as @e[type=minecraft:boat,tag=!sbcore] run kill @s

#箱船
execute as @e[type=minecraft:chest_boat,tag=!sbcore] run data merge entity @s {NoGravity:1b,Tags:["sbcore"]}

#矿车
execute as @e[type=minecraft:minecart,tag=!sbcore] at @s run summon minecraft:boat ~ ~ ~ {Tags:["sbcore"]}
execute at @e[type=minecraft:minecart,tag=!sbcore] as @e[type=minecraft:boat,tag=sbcore,sort=nearest,limit=1] run data modify entity @s Rotation set from entity @e[type=minecraft:minecart,sort=nearest,limit=1] Rotation
execute as @e[type=minecraft:minecart,tag=!sbcore] run kill @s

#普通箭
execute as @e[type=minecraft:arrow,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],NoGravity:1b}

#光灵箭
execute at @e[type=minecraft:spectral_arrow] run summon minecraft:fireball ~ ~ ~ {Tags:["sbcore"]}
execute at @e[type=minecraft:spectral_arrow] as @e[type=minecraft:fireball,sort=nearest,limit=3,distance=..0.1,tag=sbcore] at @s run data modify entity @s Motion set from entity @e[type=minecraft:spectral_arrow,sort=nearest,limit=1] Motion
execute at @e[type=minecraft:spectral_arrow] as @e[type=minecraft:fireball,sort=nearest,limit=3,distance=..0.1,tag=sbcore] run data merge entity @s {Item:{id:"minecraft:magma_block"}}
execute as @e[type=minecraft:spectral_arrow] run kill @s

#小火球
execute at @e[type=minecraft:small_fireball] run summon minecraft:wind_charge ~ ~ ~ {Fire:1b,Tags:["sbcore"]}
execute at @e[type=minecraft:small_fireball] as @e[type=minecraft:wind_charge,sort=nearest,limit=1,tag=sbcore] at @s run data modify entity @s Motion set from entity @e[type=minecraft:small_fireball,sort=nearest,limit=1] Motion
execute as @e[type=minecraft:small_fireball] run kill @s

#大火球
execute at @e[type=minecraft:fireball,tag=!sbcore] run summon minecraft:fireball ~ ~ ~ {Tags:["sbcore"],Passengers:[{id:"minecraft:fireball",Tags:["sbcore"],Passengers:[{id:"minecraft:fireball",Tags:["sbcore"]}]}]}
execute at @e[type=minecraft:fireball,tag=!sbcore] as @e[type=minecraft:fireball,tag=sbcore,sort=nearest,limit=1,tag=sbcore] run data modify entity @s Motion set from entity @e[type=minecraft:fireball,sort=nearest,limit=1,tag=!sbcore] Motion
execute as @e[type=minecraft:fireball,tag=!sbcore] run kill @s

#闪电
execute at @e[type=minecraft:lightning_bolt,tag=!sbcore] run fill ~ -64 ~ ~ 319 ~ white_stained_glass replace air
execute at @e[type=minecraft:lightning_bolt,tag=!sbcore] run fill ~ -64 ~ ~ 319 ~ white_stained_glass replace fire
execute at @e[type=minecraft:lightning_bolt,tag=!sbcore] run fill ~ -64 ~ ~ 319 ~ white_stained_glass replace water
execute at @e[type=minecraft:lightning_bolt,tag=!sbcore] run fill ~ -64 ~ ~ 319 ~ white_stained_glass replace lava
#execute at @e[type=minecraft:lightning_bolt,tag=!sbcore] run fill ~ -64 ~ ~ 319 ~ water[level=7] replace air


#雪球
execute at @e[type=minecraft:snowball,tag=!sbcore] unless block ~ ~-1 ~ air run fill ~ ~ ~ ~ ~ ~ minecraft:torch replace air
execute at @e[type=minecraft:snowball,tag=!sbcore] unless block ~ ~-1 ~ air run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute at @e[type=minecraft:snowball,tag=!sbcore] if block ~ ~-1 ~ torch run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute as @e[type=minecraft:snowball,tag=!sbcore] at @s unless block ~ ~-1 ~ air run kill @s

#execute at @e[type=minecraft:snowball] run summon minecraft:fireball ~ ~ ~ {Tags:["sbcore"]}
#execute at @e[type=minecraft:snowball] as @e[type=minecraft:fireball,sort=nearest,limit=3,distance=..0.1,tag=sbcore] at @s run data modify entity @s Motion set from entity @e[type=minecraft:snowball,sort=nearest,limit=1] Motion
#execute at @e[type=minecraft:snowball] as @e[type=minecraft:fireball,sort=nearest,limit=3,distance=..0.1,tag=sbcore] run data merge entity @s {Item:{id:"minecraft:magma_block"}}
#execute as @e[type=minecraft:snowball] run kill @s

#鸡蛋
execute at @e[type=minecraft:egg] as @e[type=arrow,distance=..32,nbt={inGround:0b}] run data merge entity @s {NoGravity:0b}
execute at @e[type=minecraft:egg] run playsound minecraft:block.amethyst_cluster.break player @a ~ ~ ~ 10 1
execute at @e[type=minecraft:egg] at @e[type=arrow,distance=..32,nbt={inGround:0b}] run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute as @e[type=minecraft:egg] run kill @s

#唤魔者尖牙
execute at @e[type=minecraft:evoker_fangs] run effect give @e[distance=..0.75,type=!minecraft:player] slowness 1 2 true
execute at @e[type=minecraft:evoker_fangs] run effect give @a[distance=..0.75,gamemode=!spectator] slowness 1 2 true

#盔甲架
execute as @e[type=minecraft:armor_stand] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[type=minecraft:armor_stand] at @s run fill ^6 ^ ^6 ^6 ^ ^6 fire replace air
execute as @e[type=minecraft:armor_stand] at @s run fill ^-6 ^ ^-6 ^-6 ^ ^-6 fire replace air
execute as @e[type=minecraft:armor_stand] at @s positioned ~ ~3 ~ run particle minecraft:flame ^6 ^ ^6 0.1 1.5 0.1 0.01 10 normal
execute as @e[type=minecraft:armor_stand] at @s positioned ~ ~3 ~ run particle minecraft:flame ^-6 ^ ^-6 0.1 1.5 0.1 0.01 10 force
execute at @e[type=minecraft:armor_stand] run effect give @e[distance=..6.5,type=!minecraft:player] minecraft:resistance 1 0 true
execute at @e[type=minecraft:armor_stand] run effect give @e[distance=..6.5,type=!minecraft:player] minecraft:strength 1 0 true
execute at @e[type=minecraft:armor_stand] run effect give @a[distance=..6.5,gamemode=!spectator] minecraft:resistance 1 0 true
execute at @e[type=minecraft:armor_stand] run effect give @a[distance=..6.5,gamemode=!spectator] minecraft:strength 1 0 true

#羊驼唾沫
execute at @e[type=minecraft:llama_spit] run summon minecraft:fireball ~ ~ ~ {Tags:["sbcore"]}
execute at @e[type=minecraft:llama_spit] as @e[type=minecraft:fireball,sort=nearest,limit=3,distance=..0.1,tag=sbcore] at @s run data modify entity @s Motion set from entity @e[type=minecraft:llama_spit,sort=nearest,limit=1] Motion
execute at @e[type=minecraft:llama_spit] as @e[type=minecraft:fireball,sort=nearest,limit=3,distance=..0.1,tag=sbcore] run data merge entity @s {Item:{id:"minecraft:heavy_core"}}
execute as @e[type=minecraft:llama_spit] run kill @s