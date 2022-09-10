def gen_whatever(female, male, surname)
  puts "What's the character's gender?"
  print "> "
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
   $CHAR_NAME = "Their name is #{female.sample} #{surname.sample}.\n"
  elsif gender.include?("male")
   $CHAR_NAME = "Their name is #{male.sample} #{surname.sample}.\n"
  else
   puts "Try again, please."
  end
end

def gen_dragonborn()
  gen_whatever(DRAGONBORN_FEMALE, DRAGONBORN_MALE, DRAGONBORN_SURNAME)
  end
end

def gen_dwarf()
  gen_whatever(DWARVEN_FEMALE, DWARVEN_MALE, DWARVEN_SURNAME)
  end
end

def gen_elf()
  gen_whatever(ELVEN_FEMALE, ELVEN_MALE, ELVEN_SURNAME)
  end
end

def gen_fae()
  gen_whatever(FAE_FEMALE, FAE_MALE, FAE_SURNAME)
  end
end

def gen_gnome()
  gen_whatever(GNOMISH_FEMALE, GNOMISH_MALE, GNOMISH_SURNAME)
  end
end

def gen_halfling(HALFLING_FEMALE, HALFLING_MALE, HALFLING_SURNAME)
  gen_whatever()
  end
end

def gen_human()
  gen_whatever(HUMAN_FEMALE, HUMAN_MALE, HUMAN_SURNAME)
  end
end

def gen_orc()
  gen_whatever(ORCISH_FEMALE, ORCISH_MALE, ORCISH_SURNAME)
  end
end

def gen_tiefling()
  gen_whatever(TIEFLING_MALE, TIEFLING_FEMALE, TIEFLING_SURNAME)
end