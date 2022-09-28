nouns = ["character", "place", "thing"]

def choice(prompt, options)

  puts prompt

  n = 0
  options.each do | option |
    n = n + 1
    puts "#{n}) #{option}"
  end

  print "> "

  $stdin.gets.downcase.chomp
end

def start()

  input = choice("What do you need made?", ["character", "place", "thing"])

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

  chartype = choice("Sure thing, what kind of character?", ["Humanoid", "Monster"])

  if chartype.include?("hu") | chartype.include?("1")
    humanoid()
  elsif chartype.include?("mon") | chartype.include?("2")
    monster()
  else
    puts "idk what I'm supposed to do with that."
    humon() # Sorry
  end
end

def humanoid
  Dir.glob(File.expand_path("../lists/names/characters/*", __FILE__)).each do |file|
    require file
  end

  puts "Ok, we can make a character. What's the characters race?"
  print "> "
  loop do    
    answer = $stdin.gets.downcase.chomp
    race_name = \
      case answer
      when /dwar[fv]/   then "dwarven"
      when /el[fv]/     then "elven"
      when /gnom/       then "gnomish"
      when "dragonborn", "fae", "halfling", "human", "orc", "tiefling"
        answer
      else nil
        puts "try again"
      end
    if race_name 
      gen_race_by_name(race_name)
      break
    end
  end


  puts "Awesome! Weird question, but are they a pirate or a noble and if so, which?"
  print "> "
  piroble = $stdin.gets.downcase.chomp
  if piroble.include?("pirate")
    pirate_name = "Their pirate name is #{PIRATE_NAME.sample} \n"
  elsif piroble.include?("noble")
    noble_name = "Their noble name is #{RULER_NAME.sample} \n"
  else
    puts "Okay, cool, just checking."
  end

  # The Magic Output
  # Sam I'm so sorry about the global.
  # Definitely a thing I want to figure out how to scrub
  # Out of this thing eventually.
  # set this to a variable to save it somewhere
  puts
  puts $CHAR_NAME
  puts pirate_name if pirate_name
  puts noble_name if noble_name
  puts "LOOKS: #{APPEARANCES.sample}."
  puts "STORY: #{HISTORIES.sample}."
  puts "CHARM: #{PERSONALITY.sample}."
  puts "FLAWS: #{FLAWS.sample}.\n"

  STAT_BLOCK.each do |stat, value|
    puts "#{stat}:   #{value}"
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
