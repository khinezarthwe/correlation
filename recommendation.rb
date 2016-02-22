require 'json'
recorditem = JSON.parse(File.read("hashoutput.json"))
data = JSON.parse(File.read("similarity.json"))
user_arr = data.keys
item_arr = recorditem.values

#calculating weight for item,user
#p data[user_arr[0]][0][1]
#puts recorditem[user_arr[0]]
recorditem[user_arr[1]].each do |w_foritem|
	#puts w_foritem[0]

end
