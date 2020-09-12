name = ["japan", "usa", "china", "spain", "russia"]
puts name[1]
puts name[0..4]
p name.shuffle
p name.sort
puts name.join
name[1] = "tatata"
p name

mountains = [
  {name: "Fuzi", elevation: 3776},
  {name: "Matterhorn", elevation: 4478},
  {name: "Everest", elevation: 8848}
]
puts mountains
p mountains.shuffle
mountains[0][:name] = "FUZISAN"
p mountains
