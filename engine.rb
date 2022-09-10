Dir.glob(File.expand_path("../lists/names/characters/*", __FILE__)).each do |file|
  require file
end
Dir.glob(File.expand_path("../lists/names/monsters/*", __FILE__)).each do |file|
  require file
end

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
    humon() # Sorry
  end
end

def humanoid
  puts "Ok, we can make a character. What's the characters race?"
  print "> "
  loop do    
    answer = $stdin.gets.downcase.chomp
    if answer.include?("dragonborn")
      gen_dragonborn()
      break
    elsif answer.include?("dwarf") | answer.include?("dwarv")
      gen_dwarf()
      break
    elsif answer.include?("elf") | answer.include?("elv")
      gen_elf()
      break
    elsif answer.include?("fae")
      gen_fae()
      break
    elsif answer.include?("gnom")
      gen_gnome()
      break
    elsif answer.include?("halfling")
      gen_halfling()
      break
    elsif answer.include?("human")
      gen_human()
      break
    elsif answer.include?("orc")
      gen_orc()
      break
    elsif answer.include?("tiefling")
      gen_tiefling()
      break
    else 
      puts "Sorry, don't know that one. What's the character's race?"
      print "> "     
    end
  end

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

  if pirate == true
    pirate_name = "Their pirate name is #{PIRATE_NAME.sample} \n"
  elsif noble == true
    noble_name = "Their noble name is #{RULER_NAME.sample} \n"
  else
  end

  # The Magic Output
  # Sam I'm so sorry about the global.
  # Definitely a thing I want to figure out how to scrub
  # Out of this thing eventually.
  # set this to a variable to save it somewhere
  puts
  puts $CHAR_NAME
  puts "LOOKS: #{APPEARANCES.sample}."
  puts "STORY: #{HISTORIES.sample}."
  puts "CHARM: #{PERSONALITY.sample}."
  puts "FLAWS: #{FLAWS.sample}.\n"

  STAT_BLOCK.each do |stat, value|
    puts "#{stat}:   #{value}"
  end
end

def monster()
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
