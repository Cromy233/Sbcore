#村民
execute as @e[type=minecraft:villager,tag=!sbcore] run effect give @s minecraft:invisibility infinite 255 true
execute at @e[type=minecraft:villager,tag=!sbcore] run summon minecraft:villager ~ ~ ~ {Tags:["sbcore"],Passengers:[{id:"minecraft:iron_golem",attributes:[{id:"minecraft:generic.scale",base:0.4},{id:"minecraft:generic.max_health",base:25},{id:"minecraft:generic.movement_speed",base:0.2}]}]}
execute as @e[type=minecraft:villager,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:villager,tag=!sbcore] run kill @s
execute as @e[type=minecraft:villager,tag=sbcore] run effect give @s minecraft:regeneration infinite 0 true
execute as @e[type=minecraft:villager,tag=sbcore] at @s if block ~ ~-0.5 ~ minecraft:dirt run playsound minecraft:item.hoe.till neutral @a ~ ~ ~
execute as @e[type=minecraft:villager,tag=sbcore] at @s if block ~ ~-0.5 ~ minecraft:dirt run fill ~ ~-0.5 ~ ~ ~-0.5 ~ minecraft:farmland replace minecraft:dirt

#鸡
execute as @e[type=minecraft:chicken,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],Health:10f,attributes:[{id:"minecraft:generic.scale",base:2},{id:"minecraft:generic.movement_speed",base:0.5},{id:"minecraft:generic.jump_strength",base:2.5},{id:"minecraft:generic.max_health",base:10},{id:"minecraft:generic.knockback_resistance",base:1}]}

#蜜蜂
execute as @e[type=minecraft:bee,tag=!sbcore] run effect give @s minecraft:invisibility infinite 255 true
execute at @e[type=minecraft:bee,tag=!sbcore] run summon husk ~ ~ ~ {Tags:["sbcore"],CustomName:'"Bug"',attributes:[{id:"minecraft:generic.scale",base:0.2},{id:"minecraft:generic.attack_damage",base:1},{id:"minecraft:generic.max_health",base:5},{id:"minecraft:generic.movement_speed",base:0.4},{id:"minecraft:generic.follow_range",base:64}]}
execute as @e[type=minecraft:bee,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:bee,tag=!sbcore] run kill @s

#铁傀儡
execute as @e[type=minecraft:iron_golem,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"minecraft:generic.water_movement_efficiency",base:1},{id:"minecraft:generic.knockback_resistance",base:0.9}]}
execute as @e[type=minecraft:iron_golem,tag=sbcore] run effect give @s minecraft:regeneration infinite 0 true

#流浪商人
execute as @e[type=minecraft:wandering_trader] at @s run tp @s ~ ~ ~ ~36 ~
execute at @e[type=minecraft:wandering_trader] run particle minecraft:heart ^ ^0.5 ^7.48 0.1 0 0.1 0.1 2 normal

execute at @e[type=minecraft:wandering_trader] run effect give @e[distance=..7.5,type=!minecraft:player] minecraft:glowing 15 0 true
execute at @e[type=minecraft:wandering_trader] run effect give @e[distance=..7.5,type=!minecraft:player] minecraft:bad_omen 15 4 true
execute at @e[type=minecraft:wandering_trader] run effect give @e[distance=..7.5,type=!minecraft:player] minecraft:resistance 15 0 true

execute at @e[type=minecraft:wandering_trader] run effect give @a[distance=..7.5,gamemode=!spectator] minecraft:glowing 15 0 true
execute at @e[type=minecraft:wandering_trader] run effect give @a[distance=..7.5,gamemode=!spectator] minecraft:bad_omen 15 4 true
execute at @e[type=minecraft:wandering_trader] run effect give @a[distance=..7.5,gamemode=!spectator] minecraft:resistance 15 0 true

#羊
execute as @e[type=minecraft:sheep,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],ArmorDropChances:[0f,0f,0f,0f],ArmorItems:[{},{},{id:"minecraft:diamond_chestplate",components:{enchantments:{levels:{"minecraft:thorns":5,"minecraft:protection":5}}}},{}]}

#蝙蝠
execute at @e[type=minecraft:bat] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:deepslate_coal_ore replace minecraft:coal_ore
execute as @e[type=minecraft:bat] at @s if entity @a[distance=..1,gamemode=!spectator] run damage @p 1 minecraft:mob_attack by @s
execute as @e[type=minecraft:bat] at @s if entity @a[distance=..1,gamemode=!spectator] run effect give @s instant_health 1 0 false

execute as @e[type=minecraft:bat] at @s if entity @e[distance=..1,type=minecraft:iron_golem] run damage @e[sort=nearest,limit=1,type=minecraft:iron_golem] 1 minecraft:mob_attack by @s
execute as @e[type=minecraft:bat] at @s if entity @e[distance=..1,type=minecraft:iron_golem] run effect give @s instant_health 1 0 false

#execute as @e[type=minecraft:bat] at @s if entity @e[distance=..1,type=!minecraft:player] run damage @e[sort=nearest,limit=1,type=!minecraft:player] 1 minecraft:mob_attack by @s
#execute as @e[type=minecraft:bat] at @s if entity @e[distance=..1,type=!minecraft:player,type=!minecraft:bat] run effect give @s instant_health 1 0 false

#猪
execute as @e[type=minecraft:pig,tag=!sbcore,nbt={Saddle:1b}] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"minecraft:generic.movement_speed",base:1.5},{id:"minecraft:generic.max_health",base:2},{id:"minecraft:generic.knockback_resistance",base:1}]}
execute as @e[type=minecraft:pig,tag=sbcore] at @s unless entity @a[distance=..2.5,gamemode=!spectator] run effect give @s minecraft:slowness 1 255 true
execute as @e[type=minecraft:pig,tag=sbcore] at @s unless entity @a[distance=..2.5,gamemode=!spectator] run effect give @s minecraft:resistance 1 255 true

#马
execute as @e[type=minecraft:horse,tag=!sbcore,nbt={SaddleItem:{id:"minecraft:saddle"}}] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"minecraft:generic.jump_strength",base:5},{id:"minecraft:generic.fall_damage_multiplier",base:0}]}
execute as @e[type=minecraft:horse,tag=sbcore] run effect give @s slowness infinite 4 true

#僵尸疣猪兽
execute as @e[type=minecraft:zoglin,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.attack_damage",base:5}]}

#青蛙
execute as @e[type=minecraft:frog,tag=!sbcore] at @s if entity @e[distance=..5,type=!minecraft:frog,type=!minecraft:player] run data modify entity @s Motion set from entity @e[type=!minecraft:frog,limit=1,sort=nearest,type=!minecraft:player] Motion
execute as @e[type=minecraft:frog,tag=!sbcore] at @s if entity @e[distance=..5,type=!minecraft:frog,type=!minecraft:player] run data modify entity @s Rotation set from entity @e[type=!minecraft:frog,limit=1,sort=nearest,type=!minecraft:player] Rotation
execute at @e[type=minecraft:frog,tag=!sbcore] as @e[type=!minecraft:frog,distance=..2] run damage @s 2.0 minecraft:mob_attack by @e[type=minecraft:frog,tag=!sbcore,limit=1,sort=nearest]
execute as @e[type=minecraft:frog,tag=!sbcore] on leasher at @s as @e[type=minecraft:frog,tag=!sbcore,limit=1,sort=nearest] at @s facing entity @p feet run tp ^ ^ ^0.2

#鱿鱼
execute as @e[type=minecraft:squid,tag=!sbcore] run effect give @s invisibility infinite 255 true
execute at @e[type=minecraft:squid,tag=!sbcore] run summon minecraft:dolphin ~ ~ ~ {Tags:["sbcore"]}
execute as @e[type=minecraft:squid,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:squid,tag=!sbcore] run kill @s

#发光鱿鱼
#execute as @e[type=minecraft:glow_squid,tag=!sbcore] run effect give @s invisibility infinite 255 true
#execute at @e[type=minecraft:glow_squid,tag=!sbcore] run summon minecraft:warden ~ ~ ~ {Tags:["sbcore"],Silent:1b,Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L},"minecraft:sonic_boom_cooldown":{value:{},ttl:1200L}}},attributes:[{id:"minecraft:generic.scale",base:0.33},{id:"minecraft:generic.attack_damage",base:2},{id:"minecraft:generic.max_health",base:5},{id:"minecraft:generic.movement_speed",base:0.1},{id:"minecraft:generic.water_movement_efficiency",base:1}]}
#execute as @e[type=minecraft:glow_squid,tag=!sbcore] run tp @s 0 -150 0
#execute as @e[type=minecraft:glow_squid,tag=!sbcore] run kill @s

#鹦鹉
execute as @e[type=minecraft:parrot,tag=!sbcore] run effect give @s invisibility infinite 255 true
execute at @e[type=minecraft:parrot,tag=!sbcore] run summon bee ~ ~ ~ {Tags:["sbcore"],attributes:[{id:"minecraft:generic.scale",base:1},{id:"minecraft:generic.flying_speed",base:3}],Passengers:[{id:"minecraft:minecart",Tags:["sbcore"]}]}
execute at @e[type=minecraft:parrot,tag=!sbcore] run summon bee ~ ~ ~ {Tags:["sbcore"],attributes:[{id:"minecraft:generic.scale",base:1},{id:"minecraft:generic.flying_speed",base:3}],Passengers:[{id:"minecraft:minecart",Tags:["sbcore"]}]}
execute at @e[type=minecraft:parrot,tag=!sbcore] run summon bee ~ ~ ~ {Tags:["sbcore"],attributes:[{id:"minecraft:generic.scale",base:1},{id:"minecraft:generic.flying_speed",base:3}],Passengers:[{id:"minecraft:minecart",Tags:["sbcore"]}]}
execute as @e[type=minecraft:parrot,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:parrot,tag=!sbcore] run kill @s

#小安粒
execute as @e[type=minecraft:allay,tag=!sbcore] if entity @a[distance=..16,gamemode=!spectator] run effect give @s glowing 1 0 true
execute at @e[type=minecraft:allay,tag=!sbcore] if entity @a[distance=..16,gamemode=!spectator] run effect give @a[distance=..16,gamemode=!spectator] health_boost 60 4 true
execute at @e[type=minecraft:allay,tag=!sbcore] if entity @a[distance=..16,gamemode=!spectator] run effect give @a[distance=..16,gamemode=!spectator] regeneration 12 0 true
execute at @e[type=minecraft:allay,tag=!sbcore] at @a[distance=..16,gamemode=!spectator] run particle minecraft:wax_off ~ ~ ~ 0.2 0 0.2 6 1 normal

#骆驼
execute as @e[type=minecraft:camel,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"minecraft:generic.fall_damage_multiplier",base:0},{id:"minecraft:generic.jump_strength",base:0.5},{id:"minecraft:generic.movement_speed",base:0.15},{id:"minecraft:generic.armor",base:20}]}

#赤足兽
execute as @e run attribute @s minecraft:generic.burning_time modifier remove strider_grace

#execute at @e[type=minecraft:strider,tag=!sbcore] run effect give @e[type=!minecraft:strider,distance=..5,type=!minecraft:player] minecraft:fire_resistance 1 0 true
#execute at @e[type=minecraft:strider,tag=!sbcore] run effect give @a[distance=..5,gamemode=!spectator] minecraft:fire_resistance 1 0 true
execute at @e[type=minecraft:strider,tag=!sbcore] as @e[distance=..5] run attribute @s minecraft:generic.burning_time modifier add strider_grace -1 add_multiplied_total
execute at @e[type=minecraft:strider,tag=!sbcore] at @e[distance=..5,type=!minecraft:player,type=!minecraft:strider] run particle minecraft:splash ~ ~1 ~ 0.25 0.5 0.25 0 2 normal
execute at @e[type=minecraft:strider,tag=!sbcore] at @a[distance=..5,gamemode=!spectator] run particle minecraft:splash ~ ~1 ~ 0.25 0.5 0.25 0 2 normal
execute at @e[type=minecraft:strider,tag=!sbcore] run particle minecraft:splash ~ ~1 ~ 0.25 0.5 0.25 0 2 normal

execute as @e[type=minecraft:strider,tag=!sbcore] at @s run damage @e[type=minecraft:magma_cube,sort=nearest,limit=1,distance=..3] 0.5 mob_attack by @s
execute as @e[type=minecraft:strider,tag=!sbcore] at @s run damage @e[type=minecraft:magma_cube,sort=nearest,limit=1,distance=..1.5] 1.5 mob_attack by @s

#僵尸猪人
execute as @e[type=minecraft:zombified_piglin,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],CustomName:'"Grumm"',attributes:[{id:"minecraft:generic.gravity",base:-0.08}]}

#僵尸马
execute as @e[type=minecraft:zombie_horse] at @s facing entity @e[distance=8,limit=1,sort=nearest] feet run tp ^ ^ ^1
execute as @e[type=minecraft:zombie_horse] at @s run damage @e[distance=0.01..1,limit=1,sort=nearest] 5 mob_attack by @s