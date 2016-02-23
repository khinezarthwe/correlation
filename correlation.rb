require 'json'
require 'pearson'
require 'csv'
usersimilarity = {}
user_arr = ['user_3','user_7','user_9','user_12','user_16','user_18','user_22','user_24','user_28','user_39','user_98','user_106','user_201','user_215','user_230','user_277','user_369','user_372','user_609']
data = File.read("hashoutput.json")
user_arr.each do |user_data|
  usersimilarity[user_data] = Pearson.closest_entities(JSON.parse(data),user_data,limit:20)
end


#p usersimilarity['user_3'][1][1]
 CSV.open("similarity.csv" ,"w") do |csvobject|
   usersimilarity.values.each do |row_arr|
     csvobject << row_arr
   end
 end
#File.open('similarity.json','w') {|file| file.write(usersimilarity.to_json)}