# sam = 4.times.map { rand(1..6) }.sort.last(3).sum

def stat_roll()
  rolls = Array.new(4) { rand(1..6) }
  rolls.delete_at(rolls.index(rolls.min))
  rolls.sum
end 

#STR | DEX | CON | INT | WIS | CHA
STAT_BLOCK = {
  "STR" => stat_roll(),
  "DEX" => stat_roll(),
  "CON" => stat_roll(),
  "INT" => stat_roll(),
  "WIS" => stat_roll(),
  "CHA" => stat_roll(),
}