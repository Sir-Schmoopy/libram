def start()
  puts "Watchuwant?"
  puts "1) A character"
  puts "2) A place"
  puts "3) A thing"
  print "> "
  input = $stdin.gets.downcase.chomp

  if input.include?("char") | input.include?("1")
    gen_char()
  elsif input.include?("place") | input.include?("2")
    gen_place()
  elsif input.include?("thing") | input.include?("3")
    gen_thing()
  else
  end
end

def gen_char()
  Dir.glob(File.expand_path("../lists/names/characters/*", __FILE__)).each do |file|
    require file
  end

  puts "Ok, we can make a character. What's the characters race?"
  print "> "
  race = $stdin.gets.downcase.chomp

  puts "Awesome! Weird question, but are they a pirate or a noble and if so, which?"
  print "> "
  piroble = $stdin.gets.downcase.chomp
  if piroble.include?("pirate")
    pirate = true
  elsif piroble.include?("noble")
    noble = true
  else
    puts "Okay, cool, just checking."
  end

  # puts "Do you need some basic stats?"
  # print "> "
  # stats = $stdin.gets.downcase.chomp

  if race.include?("dragonborn")    #these lines are referencing arrays in /lists/names/chars/races.rb
    gen_dragonborn()
  elsif race.include?("dwarf") | race.include?("dwarv")
    gen_dwarf()
  elsif race.include?("elf") | race.include?("elv")
    gen_elf()
  elsif race.include?("fae")
    gen_fae()
  elsif race.include?("gnom")
    gen_gnome()
  elsif race.include?("halfling")
    gen_halfling()
  elsif race.include?("human")
    gen_human()
  elsif race.include?("orc")
    gen_orc()
  elsif race.include?("tiefling")
    gen_tiefling()
  else puts "TRY AGAIN, MAYBE?"
    puts "          ██████████         "
    puts "      ████▒▒▒▒▒▒▒▒▒▒████     "
    puts "    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██   "
    puts "  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██ "
    puts "  ██▒▒▒▒██▒▒▒▒▒▒▒▒▒▒██▒▒▒▒██ "
    puts "██▒▒▒▒▒▒▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒█"
    puts "██▒▒▒▒▒▒▒▒▒▒██▒▒██▒▒▒▒▒▒▒▒▒▒█"
    puts "██▒▒▒▒▒▒▒▒████▒▒████▒▒▒▒▒▒▒▒█"
    puts "██▒▒▒▒▒▒▒▒████▒▒████▒▒▒▒▒▒▒▒█"
    puts "██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█"
    puts "  ██▒▒▒▒▒▒▒▒██████▒▒▒▒▒▒▒▒██ "
    puts "  ██▒▒▒▒▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒██ "
    puts "    ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██   "
    puts "      ████▒▒▒▒▒▒▒▒▒▒████     "
    puts "          ██████████    "   end

  if pirate == true
    puts "Their pirate name is #{PIRATE_NAME.sample} \n"
  elsif noble == true
    puts "Their noble name is #{RULER_NAME.sample} \n"
  else
  end

  puts "Appearance:  #{APPEARANCES.sample}."
  puts "Backstory:   #{HISTORIES.sample}."
  puts "Personality: #{PERSONALITY.sample}."
  puts "Flaws:       #{FLAWS.sample}.\n"

  STAT_BLOCK.each do |key, value|
    puts "#{key}: #{value}"
  end
end

def gen_place
end

def gen_thing
end

start()
