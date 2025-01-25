scoreboard players set SPIDER_COUNT tmp_var 0
execute as @e[type=shapescape:overworld_spider,r=40] run scoreboard players add SPIDER_COUNT tmp_var 1
execute if score SPIDER_COUNT tmp_var matches ..9 run event entity @s allow_summoning
execute if score SPIDER_COUNT tmp_var matches 10.. run event entity @s remove_allow_summoning
