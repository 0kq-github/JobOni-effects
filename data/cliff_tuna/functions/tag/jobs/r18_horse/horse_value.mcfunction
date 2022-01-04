#個体値
loot replace entity @s armor.head loot cliff_tuna:heads/r18_horse
item modify entity @s armor.head cliff_tuna:horse

#execute store result storage horse value double 1 run data get entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[0].Amount

tag @s add horse_value_mjsk
