# Send message

execute if score #debug_login_messages nexus.value matches 1 run tellraw @s [" ",{"text":"- ","color":"gray"},{"text":"Database Library","color":"gold"},{"text":" - ","color":"gray"},{"nbt": "modules[{id:\"database_library\"}].version.major", "storage": "nexus:data", "color": "gold"}, {"text": ".", "color": "gold"}, {"nbt": "modules[{id:\"database_library\"}].version.minor", "storage": "nexus:data", "color": "gold"}, {"text": ".", "color": "gold"}, {"nbt": "modules[{id:\"database_library\"}].version.patch", "storage": "nexus:data", "color": "gold"}]