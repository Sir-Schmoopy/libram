# class NPC_generator(female, male, surname)
#   puts "What's the character's gender?"
#   print "> "
#   gender = $stdin.gets.downcase.chomp
#   if gender.include?("f")
#    $CHAR_NAME = "Their name is #{female.sample} #{surname.sample}.\n"
#   elsif gender.include?("male")
#    $CHAR_NAME = "Their name is #{male.sample} #{surname.sample}.\n"
#   else
#    puts "Try again, please."
#   end
# end

Dir.glob(File.expand_path("../lists/names/characters/*", __FILE__)).each do |file|
    require file
end

class NPC
  attr_accessor :race :female_first, :male_first, :surname, :stats
  def initialize(race, female, male, surname, stats)
    @female_first = female
    @male_first = male
    @surname = surname
    @stats = stats
    stats = stats()
  end
end

dragonborn_female = NPC.new(DRAGONBORN_FEMALE.sample, DRAGONBORN_MALE, DRAGONBORN_SURNAME.sample, STAT_BLOCK)
# dragonborn_male = NPC.new()
# dwarf_female = NPC.new()
# dwarf_male = NPC.new()
# elf_female = NPC.new()
# elf_male = NPC.new()
# fae_female = NPC.new()
# fae_male = NPC.new()
# gnome_female = NPC.new()
# gnome_male = NPC.new()
# halfling_female = NPC.new()
# halfling_male = NPC.new()
# human_female = NPC.new()
# human_male = NPC.new()
# orc_female = NPC.new()
# orc_male = NPC.new()
# tiefling_female = NPC.new()
# fiefling_male = NPC.new()

print dragonborn_female.female_first, dragonborn_female.surname
puts dragonborn_female.stats