def gen_race(race)
  puts "What's the character's gender?"
  print "> "
  gender = $stdin.gets.downcase.chomp
  if gender.include?("f")
   $CHAR_NAME = "Their name is #{race[:FEMALE].sample} #{race[:SURNAME].sample}.\n"
  elsif gender.include?("male")
   $CHAR_NAME = "Their name is #{race[:MALE].sample} #{race[:SURNAME].sample}.\n"
  else
   puts "Try again, please."
  end
end

def gen_race_by_name(race_name)
  race = Object.const_get(race_name.upcase)
  send("gen_race", race)
end