def start()
  puts "Watchuwant?"
  puts "1) A character"
  puts "2) A place"
  puts "3) A thing"
  print "> "
  input = $stdin.gets.downcase.chomp

  if input.include?("char") | input.include?("1")
    humon()
  elsif input.include?("place") | input.include?("2")
    gen_place()
  elsif input.include?("thing") | input.include?("3")
    gen_thing()
  else
  end
end

#Let's filter out the character options a bit further
def humon()
  # require Character
  puts "OK, What kind?"
  puts "1) Humanoid"
  puts "2) Monster"
  puts "3) Shut up and give me a name already!"
  print "> "
  chartype = $stdin.gets.downcase.chomp
  if chartype.include?("hu") | chartype.include?("1")
    humanoid()
  elsif chartype.include?("mon") | chartype.include?("2")
    monster()
  elsif chartype.include?("shu") | chartype.include?("3")
    #it should give a random name
  else
    puts "idk what I'm supposed to do with that."
    humon()
  end
end

# Can I make these a `Character` class?

def humanoid
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

  if race.include?("dragonborn") #these lines are referencing arrays in /lists/names/chars/races.rb
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
  else puts "Sorry, don't know that one."
  end

  if pirate == true
    puts "Their pirate name is #{PIRATE_NAME.sample} \n"
  elsif noble == true
    puts "Their noble name is #{RULER_NAME.sample} \n"
  else
  end

  puts "LOOKS:  #{APPEARANCES.sample}."
  puts "STORY:  #{HISTORIES.sample}."
  puts "CHARM:  #{PERSONALITY.sample}."
  puts "FLAWS:  #{FLAWS.sample}.\n"

  STAT_BLOCK.each do |stat, value|
    puts "#{stat}: #{value}"
  end
end

  def monster()
    Dir.glob(File.expand_path("../lists/names/monsters/*", __FILE__)).each do |file|
      require file
    end
    puts "Sure, what kinda monster are we looking at?"
    puts "1) Dragon"
    puts "2) Giant"
    puts "3) Demons/Devils"
    puts "4) Undead (Vamp/Lich/etc.)"
    print "> "
    mon_type = $stdin.gets.downcase.chomp

    if mon_type.include?("dragon") | mon_type.include?("1")
      gen_dragon()
    elsif mon_type.include?("giant") | mon_type.include?("2")
      gen_giant()
    elsif mon_type.include?("demon") | mon_type.include?("devil") | mon_type.include?("3")
      gen_devil()
    elsif mon_type.include?("undead") | mon_type.include?("vamp") | mon_type.include?("lich") | mon_type.include?("4")
      gen_undead()
    else puts "Didn't quite get that, try again?"
      monster()
  end
end

def gen_place
end

def gen_thing
end

start()
# it should have the option to save characters that you like!
