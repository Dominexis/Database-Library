# Assign features

execute if score #feature_maximum_entity_time nexus.value matches 45.. run scoreboard players set #feature_maximum_entity_time nexus.value 45
execute if score #feature_maximum_object_time nexus.value matches 45.. run scoreboard players set #feature_maximum_object_time nexus.value 45
execute if score #feature_minimum_entity_time nexus.value matches ..5 run scoreboard players set #feature_minimum_entity_time nexus.value 5
execute if score #feature_minimum_object_time nexus.value matches ..5 run scoreboard players set #feature_minimum_object_time nexus.value 5
execute if score #feature_minimum_difficulty nexus.value matches ..0 run scoreboard players set #feature_minimum_difficulty nexus.value 0