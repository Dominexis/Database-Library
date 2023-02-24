# Throw error if "Dom's Nexus" is not installed properly

execute store result score #module_count nexus.value if data storage nexus:data modules[{id:"doms_nexus"}]
execute unless score #module_count nexus.value matches 1 run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 000 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" download","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Doms-Nexus/releases"}},{"text":" is not installed.","color":"red"}]
execute if score #module_count nexus.value matches 2.. run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Multiple copies of ","color":"red"},{"text":"Dom's Nexus","color":"blue"},{"text":" exist. Remove all outdated versions.","color":"red"}]

scoreboard players set #expected_major nexus.value 2
scoreboard players set #expected_minor nexus.value 0
scoreboard players set #expected_patch nexus.value 0
scoreboard players set #installed_major nexus.value 0
scoreboard players set #installed_minor nexus.value 0
scoreboard players set #installed_patch nexus.value 0

execute if score #module_count nexus.value matches 1 store result score #installed_major nexus.value run data get storage nexus:data modules[{id:"doms_nexus"}].version.major
execute if score #module_count nexus.value matches 1 store result score #installed_minor nexus.value run data get storage nexus:data modules[{id:"doms_nexus"}].version.minor
execute if score #module_count nexus.value matches 1 store result score #installed_patch nexus.value run data get storage nexus:data modules[{id:"doms_nexus"}].version.patch
execute if score #module_count nexus.value matches 1 unless score #installed_major nexus.value = #expected_major nexus.value run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value < #expected_major nexus.value run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" download","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Doms-Nexus/releases"}}," ",{"score":{"name":"#installed_major","objective":"nexus.value"},"color":"gold"},{"text":".x.x","color":"gold"},{"text":" is too old, update it to the latest version.","color":"red"}]
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value > #expected_major nexus.value run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue"}," ",{"score":{"name":"#installed_major","objective":"nexus.value"},"color":"gold"},{"text":".x.x","color":"gold"},{"text":" is too new, update ","color":"red"},{"text":"Database Library","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Database Library","color":"gold"},{"text":" download","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Database-Library/releases"}},{"text":" to the latest version.","color":"red"}]
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value = #expected_major nexus.value unless score #installed_minor nexus.value = #expected_minor nexus.value run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value = #expected_major nexus.value if score #installed_minor nexus.value < #expected_minor nexus.value run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" download","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Doms-Nexus/releases"}}," ",{"score":{"name":"#installed_major","objective":"nexus.value"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#installed_minor","objective":"nexus.value"},"color":"gold"},{"text":".x","color":"gold"},{"text":" is too old, update it to the latest version.","color":"red"}]
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value = #expected_major nexus.value if score #installed_minor nexus.value > #expected_minor nexus.value run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue"}," ",{"score":{"name":"#installed_major","objective":"nexus.value"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#installed_minor","objective":"nexus.value"},"color":"gold"},{"text":".x","color":"gold"},{"text":" is too new, update ","color":"red"},{"text":"Database Library","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Database Library","color":"gold"},{"text":" download","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Database-Library/releases"}},{"text":" to the latest version.","color":"red"}]
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value = #expected_major nexus.value if score #installed_minor nexus.value = #expected_minor nexus.value unless score #installed_patch nexus.value >= #expected_patch nexus.value run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 1 if score #installed_major nexus.value = #expected_major nexus.value if score #installed_minor nexus.value = #expected_minor nexus.value if score #installed_patch nexus.value < #expected_patch nexus.value run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Dom's Nexus","color":"blue","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Dom's Nexus","color":"blue"},{"text":" download","color":"gray"}]},"clickEvent":{"action":"open_url","value":"https://github.com/Dominexis/Doms-Nexus/releases"}}," ",{"score":{"name":"#installed_major","objective":"nexus.value"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#installed_minor","objective":"nexus.value"},"color":"gold"},{"text":".","color":"gold"},{"score":{"name":"#installed_patch","objective":"nexus.value"},"color":"gold"},{"text":" is too old, update it to the latest version.","color":"red"}]







# Throw error if multiple copies of the module are loaded

execute store result score #module_count nexus.value if data storage nexus:data modules[{id:"database_library"}]
execute if score #module_count nexus.value matches 2.. run scoreboard players set #doms_nexus_error_boolean nexus.value 1
execute if score #module_count nexus.value matches 2.. run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Database Library","color":"gold"},{"text":"]","color":"gray"}," ",{"text":"Error: ","color":"dark_red"},{"text":"Multiple copies of ","color":"red"},{"text":"Database Library","color":"gold"},{"text":" exist. Remove all outdated versions.","color":"red"}]