#幻翼
execute as @e[type=minecraft:phantom,tag=!sbcore] run effect give @s minecraft:invisibility infinite 255 true
execute at @e[type=minecraft:phantom,tag=!sbcore] run summon minecraft:phantom ~ ~ ~ {Size:3,Tags:["sbcore"],attributes:[{id:"generic.max_health",base:3}],Passengers:[{id:"minecraft:tnt_minecart"}]}
execute as @e[type=minecraft:phantom,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:phantom,tag=!sbcore] run kill @s

#溺尸
execute as @e[type=minecraft:drowned,nbt={IsBaby:1b},tag=!sbcore] run data merge entity @s {HandItems:[{},{id:"minecraft:trident"}]}
execute as @e[type=minecraft:drowned,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],HandDropChances:[1f,1f],attributes:[{id:"generic.water_movement_efficiency",base:1}]}
execute at @e[type=minecraft:drowned,tag=sbcore] run fill ~1 ~ ~1 ~-1 ~ ~-1 water[level=5] replace air

#僵尸村民
execute as @e[type=minecraft:zombie_villager,tag=!sbcore] run effect give @s minecraft:invisibility infinite 255 true
execute at @e[type=minecraft:zombie_villager,tag=!sbcore] run summon minecraft:zombie_villager ~ ~ ~ {Tags:["sbcore"],Passengers:[{id:"minecraft:ravager",Tags:["sbcore"],attributes:[{id:"generic.scale",base:0.4},{id:"generic.max_health",base:20}]}]}
execute as @e[type=minecraft:zombie_villager,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:zombie_villager,tag=!sbcore] run kill @s



#劫掠者
execute as @e[type=minecraft:pillager,tag=!sbcore] run data merge entity @s {HandDropChances:[0.2f,0.2f],HandItems:[{id:"minecraft:crossbow",components:{"minecraft:enchantments":{levels:{"minecraft:quick_charge":3,"minecraft:mending":1,"minecraft:unbreaking":3}},"minecraft:charged_projectiles":[{id:"minecraft:firework_rocket",components:{"minecraft:fireworks":{explosions:[{has_trail:1b,shape:"large_ball",colors:[I;1973019]}],flight_duration:3}}}]}},{}]}

#普通僵尸
execute as @e[type=minecraft:zombie,tag=!sbcore,nbt={IsBaby:0b}] run data merge entity @s {CanPickUpLoot:1b,CanBreakDoors:1b,attributes:[{id:"zombie.spawn_reinforcements",base:1},{id:"generic.max_health",base:10},{id:"generic.knockback_resistance",base:0.5}]}

#小僵尸
execute as @e[type=minecraft:zombie,nbt={IsBaby:1b},tag=!sbcore] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin"}],IsBaby:0b,Tags:["sbcore"],HandItems:[{id:"minecraft:mace"},{}],HandDropChances:[0f,1f],attributes:[{id:"generic.jump_strength",base:1},{id:"generic.fall_damage_multiplier",base:0},{id:"generic.movement_speed",base:0.35}]}

#卫道士
execute as @e[type=minecraft:vindicator,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],HandDropChances:[0f,1f],HandItems:[{id:"minecraft:slime_ball",components:{enchantments:{"minecraft:knockback":15},}},{}],attributes:[{id:"generic.attack_damage",base:2},{id:"generic.follow_range",base:64}]}

#苦力怕
execute as @e[type=creeper,tag=!sbcore] at @s unless entity @a[distance=..5,gamemode=!spectator] run effect give @s minecraft:invisibility 1 255 true
execute as @e[type=creeper,tag=!sbcore] at @s if entity @a[distance=..5,gamemode=!spectator] run data merge entity @s {powered:1b,Tags:["sbcore"],attributes:[{id:"generic.max_health",base:6}]}

#烈焰人
execute as @e run attribute @s minecraft:generic.burning_time modifier remove blaze_curse
execute as @e run attribute @s minecraft:generic.safe_fall_distance modifier remove blaze_curse

execute as @e[type=minecraft:blaze,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],Health:40f,attributes:[{id:"generic.movement_speed",base:0.3},{id:"generic.max_health",base:40}]}
execute at @e[type=minecraft:blaze,tag=sbcore] as @e[distance=..7.5] run attribute @s minecraft:generic.burning_time modifier add blaze_curse 1 add_multiplied_total
execute at @e[type=minecraft:blaze,tag=sbcore] as @e[distance=..7.5] run attribute @s minecraft:generic.safe_fall_distance modifier add blaze_curse -2.5 add_value
execute at @e[type=minecraft:blaze,tag=sbcore] run effect give @e[distance=..7.5] minecraft:wind_charged 1 0 false

#恶魂
execute as @e[type=minecraft:ghast,tag=!sbcore] run effect give @s minecraft:invisibility infinite 255 true
execute at @e[type=minecraft:ghast,tag=!sbcore] run summon minecraft:ghast ~ ~ ~ {Tags:["sbcore"],attributes:[{id:"minecraft:generic.scale",base:0.5},{id:"minecraft:generic.max_health",base:5}]}
execute at @e[type=minecraft:ghast,tag=!sbcore] run summon minecraft:ghast ~ ~ ~ {Tags:["sbcore"],attributes:[{id:"minecraft:generic.scale",base:0.5},{id:"minecraft:generic.max_health",base:5}]}
execute at @e[type=minecraft:ghast,tag=!sbcore] run summon minecraft:ghast ~ ~ ~ {Tags:["sbcore"],attributes:[{id:"minecraft:generic.scale",base:0.5},{id:"minecraft:generic.max_health",base:5}]}
execute as @e[type=minecraft:ghast,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:ghast,tag=!sbcore] run kill @s

#骷髅
execute at @e[type=minecraft:skeleton,tag=!sbcore] if entity @a[distance=..3,gamemode=!spectator] run particle minecraft:poof ~ ~1 ~ 0.5 0.5 0.5 0.5 50 normal
execute at @e[type=minecraft:skeleton,tag=!sbcore] if entity @a[distance=..3,gamemode=!spectator] run playsound minecraft:entity.breeze.wind_burst hostile @a ~ ~ ~
execute as @e[type=minecraft:skeleton,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run data merge entity @s {Tags:["sbcore"],ArmorItems:[{id:"air"},{id:"air"},{id:"minecraft:iron_chestplate"},{id:"air"}],ArmorDropChances:[0f,0f,0.05f,0f],Health:20f,attributes:[{id:"generic.follow_range",base:64},{id:"generic.attack_damage",base:-1}],HandDropChances:[0f,0f],HandItems:[{id:"minecraft:iron_sword"},{}]}
execute at @e[type=minecraft:skeleton] if block ~ ~-1 ~ minecraft:deepslate run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:bone_block replace minecraft:deepslate

#末影人
#execute in minecraft:overworld as @e[type=minecraft:enderman,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],carriedBlockState:{Name:"minecraft:obsidian"}}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:arrow,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:small_fireball,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:fireball,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:wind_charge,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:potion,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:trident,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:snowball,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:firework_rocket,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:experience_bottle,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
#execute at @e[type=minecraft:enderman,tag=sbcore] as @e[type=minecraft:ender_pearl,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}

#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:arrow,distance=..3,nbt={inGround:0b}] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:small_fireball,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:fireball,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:wind_charge,distance=..3,nbt={inGround:0b}] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:potion,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:trident,distance=..3,nbt={inGround:0b}] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:snowball,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:firework_rocket,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:experience_bottle,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
#execute at @e[type=minecraft:enderman,tag=sbcore] at @e[type=minecraft:ender_pearl,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal


execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:arrow,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:small_fireball,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:fireball,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:wind_charge,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:potion,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:trident,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:snowball,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:firework_rocket,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:experience_bottle,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}
execute at @e[type=minecraft:enderman,tag=!sbcore] as @e[type=minecraft:ender_pearl,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,0d,0d]}

execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:arrow,distance=..3,nbt={inGround:0b}] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:small_fireball,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:fireball,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:wind_charge,distance=..3,nbt={inGround:0b}] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:potion,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:trident,distance=..3,nbt={inGround:0b}] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:snowball,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:firework_rocket,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:experience_bottle,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal
execute at @e[type=minecraft:enderman,tag=!sbcore] at @e[type=minecraft:ender_pearl,distance=..3] run particle minecraft:reverse_portal ~ ~ ~ 0.2 0.2 0.2 0 3 normal

#女巫
execute at @e[type=minecraft:witch,tag=!sbcore] run effect give @e[type=!minecraft:witch,distance=..3,type=!minecraft:player] levitation 1 2 true
execute at @e[type=minecraft:witch,tag=!sbcore] at @e[type=!minecraft:witch,distance=..3.5,type=!minecraft:player] run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.01 1 normal
execute at @e[type=minecraft:witch,tag=!sbcore] run effect give @a[distance=..3,gamemode=!spectator] levitation 1 2 true
execute at @e[type=minecraft:witch,tag=!sbcore] at @a[distance=..3.5,gamemode=!spectator] run particle minecraft:witch ~ ~1 ~ 0.5 0.5 0.5 0.01 1 normal

execute at @e[type=minecraft:witch,tag=!sbcore] run effect give @a[distance=3..10,gamemode=!spectator] slowness 1 0 true
execute at @e[type=minecraft:witch,tag=!sbcore] at @a[distance=3..10,gamemode=!spectator] run particle minecraft:effect ~ ~1 ~ 0.25 0.5 0.25 0.01 1 normal
execute at @e[type=minecraft:witch,tag=!sbcore] run effect give @e[type=minecraft:iron_golem,distance=3..10] weakness 1 0 true
execute at @e[type=minecraft:witch,tag=!sbcore] at @e[type=minecraft:iron_golem,distance=3..10] run particle minecraft:effect ~ ~1 ~ 0.25 0.5 0.25 0.01 1 normal

#凋零骷髅
execute as @e[type=minecraft:wither_skeleton,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],HandItems:[{id:"minecraft:netherite_sword"},{id:"minecraft:shield"}],HandDropChances:[0f,0f],ArmorItems:[{id:"minecraft:netherite_boots"},{id:"minecraft:netherite_leggings"},{id:"minecraft:netherite_chestplate"},{id:"minecraft:netherite_helmet"}],ArmorDropChances:[0f,0f,0f,0f],attributes:[{id:"generic.knockback_resistance",base:1},{id:"generic.movement_speed",base:0.15},{id:"generic.armor",base:30},{id:"generic.armor_toughness",base:20}]}

execute at @e[type=minecraft:wither_skeleton,tag=sbcore] at @e[type=minecraft:ender_pearl,distance=..3] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force
execute at @e[type=minecraft:wither_skeleton,tag=sbcore] at @e[type=minecraft:trident,distance=..3,nbt={inGround:0b}] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force
execute at @e[type=minecraft:wither_skeleton,tag=sbcore] at @e[type=minecraft:arrow,distance=..3] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 1 force

execute at @e[type=minecraft:wither_skeleton,tag=sbcore] as @e[type=minecraft:ender_pearl,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,-1d,0d]}
execute at @e[type=minecraft:wither_skeleton,tag=sbcore] as @e[type=minecraft:trident,distance=..3] run data merge entity @s {NoGravity:0b,Motion:[0d,-1d,0d]}
execute at @e[type=minecraft:wither_skeleton,tag=sbcore] as @e[type=minecraft:arrow,distance=..3] run kill @s

#史莱姆
execute as @e[type=minecraft:slime,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"minecraft:generic.attack_damage",base:1},{id:"minecraft:generic.movement_speed",base:1.5}]}

execute at @e[type=minecraft:slime,tag=sbcore] run effect give @e[distance=2.5..5,type=!minecraft:player] minecraft:oozing 30 0 false
execute at @e[type=minecraft:slime,tag=sbcore] run effect give @a[distance=..5,gamemode=!spectator] minecraft:oozing 30 0 false

#沼骸
execute as @e[type=minecraft:bogged,tag=!sbcore] run effect give @s minecraft:invisibility infinite 255 true
execute at @e[type=minecraft:bogged,tag=!sbcore] run summon minecraft:bogged ~ ~ ~ {Tags:["sbcore"],HandItems:[{id:"minecraft:wooden_sword"},{}],Passengers:[{id:"minecraft:slime",Size:1,attributes:[{id:"generic.scale",base:0.5}]}],attributes:[{id:"generic.movement_speed",base:0.2},{id:"generic.follow_range",base:12}]}
execute as @e[type=minecraft:bogged,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:bogged,tag=!sbcore] run kill @s

execute as @e[type=minecraft:bogged,tag=sbcore] at @s if entity @a[distance=6..18,gamemode=!spectator] run effect give @s glowing 1 0 true
execute at @e[type=minecraft:bogged,tag=sbcore] if entity @a[distance=6..18,gamemode=!spectator] run effect give @a[distance=6..18,gamemode=!spectator] poison 1 0 true
execute at @e[type=minecraft:bogged,tag=sbcore] if entity @a[distance=6..18,gamemode=!spectator] run effect give @a[distance=6..18,gamemode=!spectator] hunger 1 0 true
execute at @e[type=minecraft:bogged,tag=sbcore] if entity @a[distance=6..18,gamemode=!spectator] run effect give @a[distance=6..18,gamemode=!spectator] mining_fatigue 1 0 true
execute at @e[type=minecraft:bogged,tag=sbcore] if entity @a[distance=6..18,gamemode=!spectator] run effect give @a[distance=6..18,gamemode=!spectator] unluck 1 0 true
execute at @e[type=minecraft:bogged,tag=sbcore] at @a[distance=6..18,gamemode=!spectator] run particle minecraft:spore_blossom_air ~ ~1 ~ 0.1 0.5 0.1 0 1 normal

#蜘蛛
execute as @e[type=minecraft:spider,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"generic.knockback_resistance",base:0.5},{id:"generic.water_movement_efficiency",base:0.5},{id:"minecraft:generic.step_height",base:1},{id:"minecraft:generic.safe_fall_distance",base:10}]}
execute as @e[type=minecraft:spider,tag=sbcore] at @s if entity @a[distance=..2.5,gamemode=!spectator] run effect give @s minecraft:invisibility 1 0 true
execute at @e[type=minecraft:spider,tag=sbcore] run effect give @e[distance=..7.5,type=!minecraft:player] minecraft:weaving 30 0 false
execute at @e[type=minecraft:spider,tag=sbcore] run effect give @a[distance=..7.5,gamemode=!spectator] minecraft:weaving 30 0 false

#猪灵蛮兵
execute as @e[type=minecraft:piglin_brute,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],HandDropChances:[0.1f,0.1f],HandItems:[{id:"minecraft:golden_axe",components:{"minecraft:enchantments":{"minecraft:looting":3,"minecraft:mending":1}}},{}]}

#恼鬼
execute as @e[type=minecraft:vex,tag=!sbcore] run effect give @s invisibility infinite 255 true
execute if entity @e[type=minecraft:vex,tag=!sbcore] run effect give @e[type=!minecraft:player] blindness 3 0 true
execute if entity @e[type=minecraft:vex,tag=!sbcore] run effect give @a[gamemode=!spectator] blindness 3 0 true
execute if entity @e[type=minecraft:vex,tag=!sbcore] run effect give @e[type=minecraft:evoker] glowing 3 0 true
execute at @e[type=minecraft:vex,tag=!sbcore] run playsound minecraft:entity.vex.death hostile @a ~ ~ ~
execute as @e[type=minecraft:vex,tag=!sbcore] run tp @s 0 -150 0
execute as @e[type=minecraft:vex,tag=!sbcore] run kill @s

#唤魔者
execute at @e[type=minecraft:evoker,tag=!sbcore] run xp add @a[distance=..2.5,gamemode=!spectator] -1 points

#旋风人
execute as @e[type=minecraft:breeze,tag=!sbcore] at @s if entity @e[distance=0.01..5,type=!minecraft:player,type=!minecraft:breeze_wind_charge,type=!minecraft:item,type=!minecraft:wind_charge,type=!minecraft:painting,type=!minecraft:wind_charge,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:fireball] run ride @e[distance=0.01..5,type=!minecraft:player,limit=1,sort=nearest] mount @s
execute as @e[type=minecraft:breeze,tag=!sbcore] at @s if entity @e[distance=0.01..5,type=!minecraft:player,type=!minecraft:breeze_wind_charge,type=!minecraft:item,type=!minecraft:wind_charge,type=!minecraft:painting,type=!minecraft:wind_charge,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:fireball] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"generic.gravity",base:0.2}]}
execute at @e[type=minecraft:breeze] run effect give @e[type=!minecraft:breeze,distance=..2.5] minecraft:slow_falling 1 0 true

#疣猪兽
execute as @a run attribute @s minecraft:generic.fall_damage_multiplier modifier remove hoglin_feather_falling

execute as @e[type=minecraft:hoglin,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"generic.attack_knockback",base:3},{id:"generic.attack_damage",base:5}]}
execute at @e[type=minecraft:hoglin,tag=sbcore] as @a[distance=..5,gamemode=!spectator] run attribute @s minecraft:generic.fall_damage_multiplier modifier add hoglin_feather_falling -0.9 add_multiplied_base

#岩浆怪
execute as @e[type=minecraft:magma_cube] run attribute @s minecraft:generic.scale modifier remove magma
execute as @e[type=minecraft:magma_cube] run attribute @s minecraft:generic.attack_damage modifier remove magma

execute as @e[type=minecraft:magma_cube,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],NoGravity:1b}
execute at @e[type=minecraft:magma_cube,tag=sbcore,nbt={OnGround:1b}] run fill ~ ~ ~ ~ ~ ~ fire replace air
execute as @e[type=minecraft:magma_cube,tag=sbcore,nbt={NoGravity:1b}] run attribute @s minecraft:generic.scale modifier add magma -0.5 add_multiplied_total
execute as @e[type=minecraft:magma_cube,tag=sbcore,nbt={OnGround:1b}] run attribute @s minecraft:generic.attack_damage modifier add magma -0.5 add_multiplied_total

execute at @e[type=minecraft:magma_cube,tag=sbcore,nbt={NoGravity:1b}] run particle minecraft:flame ~ ~ ~ 1 -1 1 0.01 1 force

#监守者
execute as @e[type=minecraft:warden,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"generic.max_health",base:150},{id:"generic.scale",base:0.9},{id:"generic.water_movement_efficiency",base:1}]}
execute as @e[type=minecraft:warden,tag=sbcore,nbt={Brain:{memories:{"minecraft:sonic_boom_cooldown":{value:{},ttl:0L}}}}] run data merge entity @s {Brain:{memories:{"minecraft:sonic_boom_cooldown":{value:{},ttl:1200L}}}}
#execute at @e[type=minecraft:warden,tag=sbcore] run effect clear @a[distance=..16,gamemode=!spectator] darkness

#洞穴蜘蛛
execute at @e[type=minecraft:cave_spider,tag=!sbcore] run effect give @e[distance=..5,type=!minecraft:player] minecraft:weaving 30 0 false
#execute at @e[type=minecraft:cave_spider,tag=!sbcore] run effect give @e[distance=..5,type=!minecraft:player] minecraft:night_vision 15 0 false
execute at @e[type=minecraft:cave_spider,tag=!sbcore] run effect give @a[distance=..5,gamemode=!spectator] minecraft:weaving 30 0 false
#execute at @e[type=minecraft:cave_spider,tag=!sbcore] run effect give @a[distance=..5,gamemode=!spectator] minecraft:night_vision 15 0 false

execute as @e[type=minecraft:cave_spider,tag=!sbcore] at @s if entity @e[distance=0.1..5,type=!minecraft:player,type=!minecraft:item,nbt=!{Passengers:[{}]}] run ride @s mount @e[distance=0.1..5,type=!minecraft:player,type=!minecraft:item,nbt=!{Passengers:[{}]},limit=1,sort=nearest]

#尸壳
execute as @e[type=minecraft:husk,tag=!sbcore] at @s if entity @a[distance=..1.5,gamemode=!spectator] run ride @p[gamemode=!spectator] mount @s
execute as @e[type=minecraft:husk,tag=!sbcore] at @s if entity @a[distance=..1.5,gamemode=!spectator] run tag @s add sbcore

#守卫者
execute as @e[type=minecraft:guardian,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],Health:20}
execute as @e[type=minecraft:guardian,tag=sbcore] at @s as @e[distance=..1,type=!minecraft:guardian,type=!minecraft:player,type=!minecraft:elder_guardian] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=minecraft:guardian,tag=sbcore] at @s as @a[distance=..1,gamemode=!spectator] at @s run tp @s ~ ~ ~ ~180 ~
execute as @e[type=minecraft:guardian,tag=sbcore] at @s run effect give @a[distance=..1,gamemode=!spectator] minecraft:blindness 2 0 true
execute as @e[type=minecraft:guardian,tag=sbcore] at @s at @a[distance=..1,gamemode=!spectator] run particle minecraft:sonic_boom ^ ^1 ^0.5 0 0 0 1 1 normal
execute as @e[type=minecraft:guardian,tag=sbcore] at @s if entity @a[distance=..1,gamemode=!spectator] run damage @s 7 minecraft:mob_attack by @s

#流獨
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run item replace entity @s armor.head from entity @p armor.head
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run item replace entity @s armor.chest from entity @p armor.chest
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run item replace entity @s armor.legs from entity @p armor.legs
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run item replace entity @s armor.feet from entity @p armor.feet
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run item replace entity @s weapon.mainhand from entity @p weapon.mainhand
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run item replace entity @s weapon.offhand from entity @p weapon.offhand
execute at @e[type=minecraft:stray,tag=!sbcore] if entity @a[distance=..3,gamemode=!spectator] run particle minecraft:snowflake ~ ~1 ~ 0.4 0.7 0.4 0 30 normal
execute as @e[type=minecraft:stray,tag=!sbcore] at @s if entity @a[distance=..3,gamemode=!spectator] run data merge entity @s {Tags:["sbcore"],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

execute at @e[type=minecraft:stray] if block ~ ~-1 ~ minecraft:water run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:frosted_ice replace minecraft:water

#远古守卫者
execute as @a run attribute @s minecraft:generic.gravity modifier remove guardian_curse

execute as @e[type=minecraft:elder_guardian,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],Health:150,attributes:[{id:"generic.max_health",base:150},{id:"generic.armor",base:10}]}
execute at @e[type=minecraft:elder_guardian,tag=sbcore] unless entity @e[type=minecraft:guardian,distance=..16] run tp @e[type=minecraft:guardian,distance=16..32,limit=3,sort=nearest] ~ ~ ~
execute at @e[type=minecraft:elder_guardian,tag=sbcore] unless entity @e[type=minecraft:guardian,distance=..8] run tp @e[type=minecraft:guardian,distance=..16,limit=3,sort=furthest] ~ ~ ~
execute at @e[type=minecraft:elder_guardian,tag=sbcore] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 water[level=5] replace air
execute as @e[type=minecraft:elder_guardian,tag=sbcore] at @s if entity @a[distance=..3.5,gamemode=!spectator] run tp @s ~ ~ ~ ~90 ~
execute as @e[type=minecraft:elder_guardian,tag=sbcore] at @s if entity @a[distance=..3.5,gamemode=!spectator] run effect give @s minecraft:resistance 1 2 true
execute as @e[type=minecraft:elder_guardian,tag=sbcore] at @s if entity @a[distance=..3.5,gamemode=!spectator] as @e[distance=..3,type=!minecraft:elder_guardian] run damage @s 7.0 minecraft:mob_attack by @e[type=minecraft:elder_guardian,tag=sbcore,limit=1,sort=nearest]
effect give @e[type=minecraft:elder_guardian,tag=sbcore] minecraft:regeneration infinite 0 true
effect give @e[type=minecraft:elder_guardian,tag=sbcore] minecraft:resistance infinite 0 true
execute at @e[type=minecraft:elder_guardian,tag=sbcore] as @a[distance=..32,gamemode=!spectator] at @s if block ~ ~ ~ water run attribute @s minecraft:generic.gravity modifier add guardian_curse -0.16 add_value
execute at @e[type=minecraft:elder_guardian,tag=sbcore] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..16] run effect give @e[type=minecraft:guardian,distance=..16] minecraft:instant_health 1 0 true
execute at @e[type=minecraft:elder_guardian,tag=sbcore] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..16] run effect give @e[type=minecraft:guardian,distance=..16] minecraft:resistance 15 1 false
execute at @e[type=minecraft:elder_guardian,tag=sbcore] if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..16] run effect give @e[type=minecraft:guardian,distance=16..32] minecraft:regeneration 15 0 false
execute as @e[type=minecraft:elder_guardian,tag=sbcore] at @s if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..16] run damage @s 10.0 minecraft:player_attack by @p
execute at @e[type=minecraft:elder_guardian,tag=sbcore] as @e[type=minecraft:item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..16] at @s run summon minecraft:lightning_bolt ~ ~ ~ {Tags:["sbcore"]}

#潜影贝
#execute at @e[type=minecraft:shulker,tag=!sbcore] run setblock ~ ~ ~ minecraft:chest
#execute at @e[type=minecraft:shulker,tag=!sbcore] run loot insert ~ ~ ~ loot minecraft:chests/end_city_treasure
#execute at @e[type=minecraft:shulker,tag=!sbcore] run loot insert ~ ~ ~ loot minecraft:chests/end_city_treasure
#execute at @e[type=minecraft:shulker,tag=!sbcore] run loot insert ~ ~ ~ loot minecraft:chests/end_city_treasure
#execute at @e[type=minecraft:shulker,tag=!sbcore] run loot insert ~ ~ ~ loot minecraft:chests/end_city_treasure
#execute at @e[type=minecraft:shulker,tag=!sbcore] run loot insert ~ ~ ~ loot minecraft:chests/end_city_treasure

execute as @e[type=minecraft:shulker,tag=!sbcore] at @s if entity @a[distance=..5,gamemode=!spectator] run data merge entity @s {Tags:["sbcore"],attributes:[{id:"generic.scale",base:1}]}
execute as @e[type=minecraft:shulker,tag=sbcore] at @s unless entity @a[distance=..5,gamemode=!spectator] run data merge entity @s {Tags:[""],attributes:[{id:"generic.scale",base:0}]}

#猪灵
execute as @e[type=minecraft:piglin,tag=!sbcore] run data merge entity @s {Tags:["sbcore"],CustomName:'"Grumm"',attributes:[{id:"generic.gravity",base:-0.08},{id:"generic.fall_damage_multiplier",base:2}]}
execute as @e[type=minecraft:piglin,tag=sbcore,nbt={OnGround:1b}] run tag @s remove sbcore
effect give @e[type=minecraft:piglin,tag=sbcore,nbt={OnGround:0b}] minecraft:resistance 1 2 true

#凋灵
#execute as @e[type=minecraft:wither] at @s if entity @a[distance=..5,gamemode=!spectator] run tp ^ ^-0.2 ^-0.2
execute as @e[type=minecraft:wither] at @s unless block ~ ~4 ~ air as @e[type=!#minecraft:undead,distance=..10,type=!minecraft:player] run damage @s 5 minecraft:wither by @e[type=minecraft:wither,limit=1]
execute as @e[type=minecraft:wither] at @s unless block ~ ~4 ~ air as @a[distance=..10] run damage @s 5.0 minecraft:player_explosion by @e[type=minecraft:wither,limit=1]
execute as @e[type=minecraft:wither] at @s unless block ~ ~4 ~ air run particle minecraft:explosion ~ ~ ~ 3.5 3.5 3.5 0 10 normal