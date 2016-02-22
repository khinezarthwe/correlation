recorditem = {
  :x => { 'a' => 1, 'b' => 1 },
  :y => { 'a' => 0, 'b' => 1 },
  :z => { 'a' => 1, 'b' => 0 }
}
data = {
  :x => { 'y' => 1, 'z' => 0.1 },
  :y => { 'x' => 0.1, 'z' => 1 },
  :z => { 'x' => 1, 'y' => 1 }
}
total_weight = 0
total_weight_arr  = []
weighted_avg = 0
weighted_avg_arr = []
result_arr = []
#total weight for user
#for user x  for a item
if recorditem[:y]['a'] != 0
  total_weight += data[:x]['y']
elsif recorditem[:z]['a'] != 0
    total_weight += data[:x]['z']
end

total_weight_arr << total_weight
total_weight = 0

# for user x for b item

if recorditem[:y]['b'] != 0
  total_weight += data[:x]['y']
elsif recorditem[:z]['b'] != 0
    total_weight += data[:x]['z']
end
total_weight_arr << total_weight

#weighted average for user
# user x for a item
weighted_avg = (recorditem[:y]['a']*data[:x]['y'])+ (recorditem[:z]['a']*data[:x]['z'])
weighted_avg_arr << weighted_avg
weighted_avg = 0
#user x for b item
weighted_avg = (recorditem[:y]['b']*data[:x]['y'])+ (recorditem[:z]['b']*data[:x]['z'])
weighted_avg_arr << weighted_avg

#recommand for userx for item a and b
result_arr[0] = weighted_avg_arr[0] / total_weight_arr[0]
result_arr[1] = weighted_avg_arr[1] / weighted_avg_arr[1]

#desired answer! 
result_hash = { :x => { 'a' => 1, 'b' => 1 } }

