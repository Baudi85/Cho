# Kill the spiders in a room
event entity @e[type=shapescape:overworld_spider] despawn
kill @e[type=item]
clear @a shapescape:spider_silk
give @a shapescape:spider_silk 8