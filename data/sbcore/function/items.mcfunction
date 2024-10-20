execute as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},nbt=!{Item:{components:{"minecraft:max_stack_size":1}}}] run data merge entity @s {Item:{id:"minecraft:copper_ingot"}}
execute at @e[type=item,nbt={Item:{id:"minecraft:tnt"},OnGround:1b}] run summon tnt ~ ~ ~ {Tags:["sbcore"],fuse:0}
execute as @e[type=item,nbt={Item:{id:"minecraft:baked_potato"}}] run data merge entity @s {Item:{components:{rarity:"uncommon","minecraft:item_name":'"至高马铃薯"',"minecraft:food":{nutrition:5,saturation:6,can_always_eat:1b,effects:[{effect:{id:"minecraft:absorption",duration:600,amplifier:4}},{effect:{id:"wind_charged",duration:300,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] run data merge entity @s {Item:{components:{"minecraft:item_name":'"辣条"',"minecraft:food":{eat_seconds:0.4,nutrition:2,saturation:1,effects:[{effect:{id:"minecraft:hunger",duration:300,amplifier:0},probability:0.5}]}}}}
execute at @e[type=item,nbt={Item:{id:"minecraft:lightning_rod"},OnGround:1b}] run summon lightning_bolt ~ ~ ~ {Tags:["sbcore"]}
execute at @e[type=item,nbt={Item:{id:"minecraft:water_bucket"},OnGround:1b}] unless block ~ ~ ~ water run fill ~1 ~ ~1 ~-1 ~ ~-1 water[level=6] replace air
execute as @e[type=item,nbt={Item:{id:"minecraft:bucket"},OnGround:1b}] at @s if block ~ ~ ~ water run data merge entity @s {Item:{id:"minecraft:water_bucket"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] run data merge entity @s {Item:{id:"minecraft:beetroot_seeds"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:potato"}}] run data merge entity @s {Item:{id:"minecraft:cookie",components:{"minecraft:food":{nutrition:2,saturation:1,effects:[{effect:{id:"minecraft:regeneration",duration:200,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:cookie"}}] run data merge entity @s {Item:{id:"minecraft:cookie",components:{"minecraft:food":{nutrition:2,saturation:1,effects:[{effect:{id:"minecraft:regeneration",duration:200,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}}] run data merge entity @s {Item:{id:"minecraft:experience_bottle"}}
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}}] run data merge entity @s {Item:{components:{"minecraft:enchantments":{"minecraft:knockback":3}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}}] run data merge entity @s {Item:{components:{"minecraft:food":{eat_seconds:0.8,can_always_eat:1b,nutrition:2,saturation:0,effects:[{effect:{id:"minecraft:invisibility",duration:100,amplifier:9}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:cactus"}}] run data merge entity @s {Item:{components:{"minecraft:food":{nutrition:3,saturation:7,effects:[{effect:{id:"minecraft:instant_damage",duration:1,amplifier:0}},{effect:{id:"minecraft:blindness",duration:20,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}}] run data merge entity @s {Item:{components:{"minecraft:food":{eat_seconds:0.8,can_always_eat:1b,nutrition:2,saturation:3.5,effects:[{effect:{id:"minecraft:night_vision",duration:200,amplifier:0}},{effect:{id:"minecraft:poison",duration:100,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run data merge entity @s {Item:{components:{"minecraft:food":{eat_seconds:0.4,nutrition:2,saturation:0.5}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:tropical_fish"}}] run data merge entity @s {Item:{components:{"minecraft:food":{eat_seconds:3.2,can_always_eat:1b,nutrition:20,saturation:20,effects:[{effect:{id:"minecraft:bad_omen",duration:100}},{effect:{id:"minecraft:blindness",duration:100}},{effect:{id:"minecraft:darkness",duration:100}},{effect:{id:"minecraft:glowing",duration:100}},{effect:{id:"minecraft:hunger",duration:100}},{effect:{id:"minecraft:infested",duration:100}},{effect:{id:"minecraft:instant_damage",duration:100}},{effect:{id:"minecraft:levitation",duration:100}},{effect:{id:"minecraft:mining_fatigue",duration:100}},{effect:{id:"minecraft:nausea",duration:100}},{effect:{id:"minecraft:oozing",duration:100}},{effect:{id:"minecraft:poison",duration:100}},{effect:{id:"minecraft:slowness",duration:100}},{effect:{id:"minecraft:unluck",duration:100}},{effect:{id:"minecraft:weakness",duration:100}},{effect:{id:"minecraft:weaving",duration:100}},{effect:{id:"minecraft:wind_charged",duration:100}},{effect:{id:"minecraft:wither",duration:100}}]}}}}

execute at @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}] run place structure end_city ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:knowledge_book"}}] run kill @s

#execute as @e[type=item,nbt={Item:{id:"minecraft:beetroot_soup"}}] run data merge entity @s {Item:{components:{"minecraft:max_stack_size":16,"minecraft:food":{nutrition:4,saturation:7,using_converts_to:{id:"minecraft:bowl"},effects:[{effect:{id:"minecraft:instant_health",duration:1,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:glow_berries"}}] run data merge entity @s {Item:{id:"minecraft:glow_berries",components:{"minecraft:food":{nutrition:2,saturation:0.5,effects:[{effect:{id:"minecraft:glowing",duration:200,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:dried_kelp"}}] run data merge entity @s {Item:{id:"minecraft:dried_kelp",components:{"minecraft:food":{nutrition:1,saturation:1,eat_seconds:0.4,effects:[{effect:{id:"minecraft:dolphins_grace",duration:100,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:melon_slice"}}] run data merge entity @s {Item:{id:"minecraft:melon_slice",components:{"minecraft:food":{nutrition:2,saturation:1.5,eat_seconds:0.8,effects:[{effect:{id:"minecraft:haste",duration:200,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice"}}] run data merge entity @s {Item:{id:"minecraft:glistering_melon_slice",components:{"minecraft:food":{nutrition:2,saturation:2,effects:[{effect:{id:"minecraft:haste",duration:600,amplifier:0}}]}}}}
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}}] run data merge entity @s {Item:{id:"minecraft:blaze_rod",components:{enchantments:{"minecraft:fire_aspect":1}}}}

#盲盒
execute at @e[type=item,nbt={Item:{id:"minecraft:blaze_spawn_egg"}}] run summon minecraft:blaze ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:blaze_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:phantom_spawn_egg"}}] run summon minecraft:phantom ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:phantom_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:witch_spawn_egg"}}] run summon minecraft:witch ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:witch_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:cave_spider_spawn_egg"}}] run summon minecraft:cave_spider ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:cave_spider_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:slime_spawn_egg"}}] run summon minecraft:slime ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:ghast_spawn_egg"}}] run summon minecraft:ghast ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:ghast_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:stray_spawn_egg"}}] run summon minecraft:stray ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:stray_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:husk_spawn_egg"}}] run summon minecraft:husk ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:husk_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:warden_spawn_egg"}}] run summon minecraft:warden ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:warden_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:zombie_villager_spawn_egg"}}] run summon minecraft:zombie_villager ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:zombie_villager_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:hoglin_spawn_egg"}}] run summon minecraft:hoglin ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:hoglin_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:piglin_brute_spawn_egg"}}] run summon minecraft:piglin_brute ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:piglin_brute_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:evoker_spawn_egg"}}] run summon minecraft:evoker ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:evoker_spawn_egg"}}] run kill @s
execute at @e[type=item,nbt={Item:{id:"minecraft:magma_cube_spawn_egg"}}] run summon minecraft:magma_cube ~ ~ ~
execute as @e[type=item,nbt={Item:{id:"minecraft:magma_cube_spawn_egg"}}] run kill @s