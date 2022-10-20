def gen_monster(monster_type)
  if monster_type = "DRAGON"
    puts "What color?"
    color = stdin.gets.upcase.chomp
    puts = "It's name is #{DRAGON_COLOR.sample}.\n"
  end
end

def gen_monster_by_monster_type(monster_type)
  monster_type = Object.const_get(monster_type.upcase)
  send("gen_monster", monster_type)
end