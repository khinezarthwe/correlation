require 'json'
require 'pearson'

hashdata = {}
user_arr = ['user_3','user_7','user_9','user_12','user_16','user_18','user_22','user_24','user_28','user_39','user_98','user_106','user_201','user_215','user_230','user_277','user_369','user_372','user_609']
data = File.read('output.json')
jdata = JSON.parse data
for i in 0..user_arr.length-1
  hashdata[user_arr[i]] = jdata[i]
end
File.open('hashoutput.json','w') {|file| file.write(hashdata.to_json)}

# usersimilarity = Pearson.closest_entities(JSON.parse(data),'user_609',limit:20)
# puts usersimilarity
