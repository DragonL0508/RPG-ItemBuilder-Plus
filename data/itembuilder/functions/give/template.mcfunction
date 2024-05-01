#Made By DragonL
#Usage:
#   /function itembuilder:give/<id> {lv:<level>}

#set item ID
data modify storage itembuilder:item.data this.id set value "template"

#set item material
data modify storage itembuilder:item.data this.material set value "minecraft:stone_sword"

#set item counts
data modify storage itembuilder:item.data this.counts set value 1

#set item name
data modify storage itembuilder:item.data this.name set value "{\"text\": \"石中寶劍\",\"color\": \"white\",\"bold\": true,\"italic\": false}"

#unbreakable?
data modify storage itembuilder:item.data this.unbreakable set value "true"

#set item level text
$data modify storage itembuilder:item.data this.level_text set value "{\"text\": \"Lv.$(lv) \",\"color\": \"gray\",\"italic\": false}"

#Do not modify the function below unless you know what you are doing !
#--------------------
#set item owner
data modify storage itembuilder:item.data this.Owner set from entity @s UUID

#execute library item giver
function itembuilder:library/give with storage itembuilder:item.data this
#--------------------