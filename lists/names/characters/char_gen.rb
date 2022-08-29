def gen_dragonborn()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{DRAGONBORN_FEMALE.sample} #{DRAGONBORN_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{DRAGONBORN_MALE.sample} #{DRAGONBORN_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_dwarf()
puts "What's the character's gender?"
    gender = $stdin.gets.downcase.chomp
    if gender.include?("f")
      puts " "
      print "Their name is #{DWARVEN_FEMALE.sample} #{DWARVEN_SURNAME.sample}.\n"
    elsif gender.include?("male")
      puts " "
      print "Their name is #{DWARVEN_MALE.sample} #{DWARVEN_SURNAME.sample}.\n"
    else puts "Try again, please."
    end
end

def gen_elf()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{ELVEN_FEMALE.sample} #{ELVEN_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{ELVEN_MALE.sample} #{ELVEN_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_fae()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{FAE_FEMALE.sample} #{FAE_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{FAE_MALE.sample} #{FAE_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_gnome()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{GNOMISH_FEMALE.sample} #{GNOMISH_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{GNOMISH_MALE.sample} #{GNOMISH_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_halfling()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{HALFLING_FEMALE.sample} #{HALFLING_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{HALFLING_MALE.sample} #{HALFLING_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_human()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{HUMAN_FEMALE.sample} #{HUMAN_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{HUMAN_MALE.sample} #{HUMAN_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_orc()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{ORCISH_FEMALE.sample} #{ORCISH_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{ORCISH_MALE.sample} #{ORCISH_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end

def gen_tiefling()
puts "What's the character's gender?"
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
    puts " "
    print "Their name is #{TIEFLING_FEMALE.sample} #{TIEFLING_SURNAME.sample}.\n"
  elsif gender.include?("male")
    puts " "
    print "Their name is #{TIEFLING_MALE.sample} #{TIEFLING_SURNAME.sample}.\n"
  else puts "Try again, please."
  end
end
