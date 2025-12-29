Ao adicionar o datapack das skills no minecraft, recebi os seguintes erros no log:


```
[18:08:20] [Server thread/ERROR]:[puffish_skills] Data pack `minefy` could not be loaded:
Unused field `anti_farming` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/minerador/experience.json`
Unused field `anti_farming` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown block tag `minecraft:mushroom_blocks` at `block` at `data` at index 1 at `operations` at `is_mushroom_block` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_oak_log` at `condition` at index 0 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_birch_log` at `condition` at index 1 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_spruce_log` at `condition` at index 2 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_jungle_log` at `condition` at index 3 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_acacia_log` at `condition` at index 4 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_dark_oak_log` at `condition` at index 5 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_mangrove_log` at `condition` at index 6 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_cherry_log` at `condition` at index 7 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_crimson_stem` at `condition` at index 8 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_warped_stem` at `condition` at index 9 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_leaves` at `condition` at index 10 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unknown variable `is_mushroom_block` at `condition` at index 11 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/lenhador/experience.json`
Unused field `anti_farming` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/escavador/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_creeper` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_ender_dragon` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_melee` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_skeleton` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_wither_skeleton` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_blaze` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `from_spawner` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_enderman` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_spider` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_zombie` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_piglin_brute` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_warden` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_wither` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_melee` at `condition` at index 0 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_wither` at `condition` at index 1 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 1 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_ender_dragon` at `condition` at index 2 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_warden` at `condition` at index 3 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 3 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_wither_skeleton` at `condition` at index 4 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 4 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_piglin_brute` at `condition` at index 5 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 5 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_blaze` at `condition` at index 6 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 6 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_enderman` at `condition` at index 7 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 7 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_zombie` at `condition` at index 8 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 8 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_skeleton` at `condition` at index 9 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 9 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_creeper` at `condition` at index 10 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 10 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `is_spider` at `condition` at index 11 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 11 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `true` at `condition` at index 12 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 12 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Expected a valid source type at `type` at index 1 at `sources` at `minefy:puffish_skills/categories/guerreiro/experience.json`
Unknown attribute `minecraft:generic.attack_speed` at `attribute` at `data` at index 0 at `rewards` at `challenge_duelista` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Unknown attribute `minecraft:generic.attack_speed` at `attribute` at `data` at index 0 at `rewards` at `challenge_gladiador` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Unknown attribute `minecraft:generic.attack_speed` at `attribute` at `data` at index 0 at `rewards` at `passive_atk_speed_2` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Unknown attribute `minecraft:generic.attack_speed` at `attribute` at `data` at index 0 at `rewards` at `passive_atk_speed_1` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Unknown attribute `minecraft:generic.attack_speed` at `attribute` at `data` at index 0 at `rewards` at `passive_atk_speed_4` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Unknown attribute `minecraft:generic.attack_speed` at `attribute` at `data` at index 0 at `rewards` at `passive_atk_speed_3` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Unknown attribute `minecraft:generic.movement_speed` at `attribute` at `data` at index 1 at `rewards` at `challenge_assassino` at `minefy:puffish_skills/categories/guerreiro/definitions.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_wither_skeleton` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_creeper` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_blaze` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_ender_dragon` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_ranged` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `from_spawner` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_enderman` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_spider` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_zombie` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_skeleton` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Expected a valid operation type at `type` at index 0 at `operations` at `is_wither` at `variables` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_ranged` at `condition` at index 0 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_wither` at `condition` at index 1 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 1 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_ender_dragon` at `condition` at index 2 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_wither_skeleton` at `condition` at index 3 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 3 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_blaze` at `condition` at index 4 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 4 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_enderman` at `condition` at index 5 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 5 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_zombie` at `condition` at index 6 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 6 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_skeleton` at `condition` at index 7 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 7 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_creeper` at `condition` at index 8 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 8 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `is_spider` at `condition` at index 9 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 9 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `true` at `condition` at index 10 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown variable `from_spawner` at `expression` at index 10 at `experience` at `data` at index 0 at `sources` at `minefy:puffish_skills/categories/arqueiro/experience.json`
Unknown attribute `minecraft:generic.movement_speed` at `attribute` at `data` at index 0 at `rewards` at `challenge_cacador` at `minefy:puffish_skills/categories/arqueiro/definitions.json`
Expected a valid source type at `type` at index 0 at `sources` at `minefy:puffish_skills/categories/defensor/experience.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 0 at `rewards` at `challenge_juggernaut` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `challenge_guarda` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `challenge_fortaleza` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 1 at `rewards` at `challenge_fortaleza` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 0 at `rewards` at `passive_health_2` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 0 at `rewards` at `passive_health_1` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 1 at `rewards` at `challenge_muralha` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 2 at `rewards` at `challenge_muralha` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `passive_armor_1` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `passive_armor_3` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 1 at `rewards` at `challenge_colosso` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `passive_armor_2` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 0 at `rewards` at `passive_health_4` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `passive_armor_4` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.max_health` at `attribute` at `data` at index 0 at `rewards` at `passive_health_3` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `challenge_tanque` at `minefy:puffish_skills/categories/defensor/definitions.json`
Unknown attribute `minecraft:generic.movement_speed` at `attribute` at `data` at index 1 at `rewards` at `challenge_tanque` at `minefy:puffish_skills/categories/defensor/definitions.json`
Expected a valid source type at `type` at index 0 at `sources` at `minefy:puffish_skills/categories/alquimista/experience.json`
Expected a valid source type at `type` at index 1 at `sources` at `minefy:puffish_skills/categories/alquimista/experience.json`
Expected a valid source type at `type` at index 0 at `sources` at `minefy:puffish_skills/categories/ferreiro/experience.json`
Expected a valid source type at `type` at index 1 at `sources` at `minefy:puffish_skills/categories/ferreiro/experience.json`
Expected a valid source type at `type` at index 2 at `sources` at `minefy:puffish_skills/categories/ferreiro/experience.json`
Expected a valid source type at `type` at index 3 at `sources` at `minefy:puffish_skills/categories/ferreiro/experience.json`
Unknown attribute `minecraft:generic.armor` at `attribute` at `data` at index 0 at `rewards` at `challenge_armaduras` at `minefy:puffish_skills/categories/ferreiro/definitions.json`
```