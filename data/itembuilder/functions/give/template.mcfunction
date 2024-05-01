#Made By DragonL
#Usage:
#   /function itembuilder:give/<id> {lv:<level>}

#set item ID
data modify storage itembuilder:item.data this.id set value "template"

#set item material
data modify storage itembuilder:item.data this.material set value "minecraft:stone_sword"

#set item counts
data modify storage itembuilder:item.data this.counts set value 1

#set item attack damage
data modify storage itembuilder:item.data this.attack_damage set value "2.0"

#set item name
data modify storage itembuilder:item.data this.name set value "{\"text\": \"石中寶劍\",\"color\": \"white\",\"bold\": true,\"italic\": false}"

#set item descriptions
data modify storage itembuilder:item.data this.desc set value ["§f只是一把誰都拿得動的劍","§f第二行敘述只是拿來§e測試§f的","§f其實第三行也是啦"]

#set item type
data modify storage itembuilder:item.data this.type_text set value "§7直劍"

#unbreakable?
data modify storage itembuilder:item.data this.unbreakable set value "true"

#set item level text
$data modify storage itembuilder:item.data this.level_text set value "{\"text\": \"§7[\"},{\"text\": \"Lv.$(lv)\",\"color\": \"#F4BDFF\",\"italic\": false},{\"text\": \"§7] \"}"

#Do not modify the function below unless you know what you are doing !
#--------------------
#set item owner
data modify storage itembuilder:item.data this.Owner set from entity @s UUID

#execute library item giver
function itembuilder:library/give with storage itembuilder:item.data this
#--------------------