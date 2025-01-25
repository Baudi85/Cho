replaceitem entity @a slot.armor.head 0 diamond_helmet
replaceitem entity @a slot.armor.chest 0 iron_chestplate
replaceitem entity @a slot.armor.legs 0 iron_leggings
replaceitem entity @a slot.armor.feet 0 iron_boots
give @a bow
give @a arrow 128
give @a diamond_sword
function main/trs_boss
# The skip boss fight only occures when you go from lobby directly to the
# boss fight. We need to set the spawn point in the survival area
setworldspawn -795 64 -391
spawnpoint @a -795 64 -391
# If the player chooses this gameplay loop, loosing the game will teleport
# the player back to the lobby
scoreboard players set BOSS_FIGHT_GAMEPLAY_LOOP var 1