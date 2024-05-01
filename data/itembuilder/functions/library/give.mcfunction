$summon item ~ ~ ~ {Tags:["this"],Item:{id:"minecraft:stone",Count:$(counts)b},PickupDelay:0s,Owner:$(Owner)}

#modify the fake item
#set material
$data modify entity @e[limit=1,tag=this] Item.id set value "$(material)"

#set name
$data modify entity @e[limit=1,tag=this] Item.tag.display.Name set value '[$(level_text),$(name)]'
$say $(name)

#set attribute
$data modify entity @e[limit=1,tag=this] Item.tag.Unbreakable set value $(unbreakable)

tag @e remove this

#$give @s $(material){rpg_item:1b,$(id):1b,Unbreakable:$(unbreakable),display:{Name:'$(name)'}}