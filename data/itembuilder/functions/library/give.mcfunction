$summon item ~ ~ ~ {Tags:["this"],Item:{id:"minecraft:stone",Count:$(counts)b,tag:{HideFlags:255}},PickupDelay:0s,Owner:$(Owner)}

#modify the fake item
#set material
$data modify entity @e[limit=1,tag=this] Item.id set value "$(material)"

#set name
$data modify entity @e[limit=1,tag=this] Item.tag.display.Name set value '[$(level_text),$(name)]'

#set lore
data modify storage itembuilder:item.data this.desc prepend value '{"text":"§   §   §   §   §   §   §   §   §   §   §   §   §   §   §   §   "}'
data modify storage itembuilder:item.data this.desc prepend from storage itembuilder:item.data this.type_text
data modify storage itembuilder:item.data this.desc append value "§"
$data modify storage itembuilder:item.data this.desc append value '[{"text":"§7[§c傷害§7] "},{"text":"+$(attack_damage)","color":"#FF8080","italic":false}]'

data modify entity @e[limit=1,tag=this] Item.tag.display.Lore set from storage itembuilder:item.data this.desc

#set attribute
$data modify entity @e[limit=1,tag=this] Item.tag.AttributeModifiers append value {AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:$(attack_damage),Operation:0,UUID:[I;685747208,611600670,-1647031100,-1987000590],Slot:"mainhand"}
$data modify entity @e[limit=1,tag=this] Item.tag.Unbreakable set value $(unbreakable)

tag @e remove this

#$give @s $(material){rpg_item:1b,$(id):1b,Unbreakable:$(unbreakable),display:{Name:'$(name)'}}