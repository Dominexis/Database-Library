# Initialize database

execute unless score #database_initialization_boolean nexus.value matches 1 run function nexus:generic/database/initialize







# Increment module count

scoreboard players add #doms_nexus_module_count nexus.value 1