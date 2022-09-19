# What if the CLI just called these classes? Can it even do that?
# This is a lot harder than I thought it would be. 
# Using it as an exercise in utilizing classes and how that could be useful for the project later on.
# 9/6/2022 -- Make it a Module instead!?
# Character = Struct.new(:first_name, :surname, :looks, :story, :charm, :flaws, :STAT_BLOCK)

DRAGONBORN_MALE = ["Arnok", "Balkian", "Batalon", "Chonan", "Durvarax", "Eshfyre", "Goran", "Gratthan", "Haakon", "Horik", "Irinanin", "Ishaan", "Jarrend", "Kerruish", "Klakgar", "Marnock", "Nephas", "Ortiak", "Padraigin", "Qemtuak", "Reinbock", "Roskilde", "Salamis", "Sinicrand", "Slasinak", "Tavaris", "Troyce", "Vaklanor", "Xerkmas", "Zandarse"]
DRAGONBORN_FEMALE = ["Agdaz", "Arveen", "Brionden", "Caporza", "Chiara", "Dackari", "Daysh", "Eriska", "Esquer", "Frashan", "Gealthyr", "Honorae", "Inkra", "Kriasys", "Mochlar", "Naxlou", "Nyexak", "Ophyassa", "Raizelle", "Riada", "Sorcha", "Thorri", "Torsael", "Trundras", "Ulrica", "Valeen", "Vaphid", "Xisliann", "Yngslani", "Zaphcoria"]
DRAGONBORN_SURNAME = ["Alziroas", "Axxurev", "Byoerach", "Craxitolor", "Cronderath", "Drakrath", "Dradmaul", "Emdelaruk", "Eirayax", "Faramdemuur", "Felriorev", "Gartujun", "Hedurim", "Induress", "Jeronabradon", "Kherrdrian", "Kiljurner", "Kondracki", "Laalrazik", "Maelchotha", "Mirmorazz", "Morcratha", "Nyrblanash", "Orscornethal", "Quinqorral", "Pazkanar", "Praxizatack", "Rantzauch", "Ratharsair", "Sevetaranen", "Shunthergesh", "Stegranta", "Thurentilor", "Tyrrmeliac", "Uyrquarenn", "Valdruald", "Voxadulus", "Xaxinuroth", "Yezkasten", "Zalnecretor"]
DWARVEN_MALE = ["Authel", "Baltan", "Bellis", "Borin", "Brom", "Cladden", "Corrighan", "Dimmick", "Domnall", "Dornan", "Dunne", "Eagar", "Enckell", "Erol", "Flannan", "Garnaith", "Gorst", "Graeme", "Hallsten", "Joran", "Klave", "Kronor", "Lochlan", "Ragnar", "Remel", "Sweyn", "Thrar", "Torben", "Treddek", "Waals",]
DWARVEN_FEMALE = ["Ansfride", "Asprella", "Belmora", "Bronagh", "Canna", "Ceirny", "Darvla", "Dorsa", "Elnora", "Eyres", "Gieva", "Grondi", "Grunilla", "Gunhild", "Hastie", "Heloise", "Ingra", "Jemma", "Ingegard", "Karrin", "Kilda", "Lasra", "Nassi", "Ohrla", "Rysa", "Sybilla", "Tasra", "Thora", "Trondra", "Ulbha",]
DWARVEN_SURNAME = ["Alefury", "Arunstone", "Beardmore", "Blanhammer", "Broadforge", "Burlminer", "Cinderbreath", "Coregaran", "Cragrock", "Dirkanvil", "Dohmhall", "Edmonstone", "Eldersteel", "Flintheart", "Foambeard", "Forgebones", "Forkbeard", "Furstsilver", "Gonstrom", "Granitehall", "Haldane", "Hammerpike", "Helmfeld", "Ingotbraid", "Ironforge", "Kaneswarran", "Kinloch", "Lodbrok", "Lynedoch", "Mithrilaxe", "Moinbrand", "Nordhorn", "Oakenguard", "Runefell", "Stormcavern", "Stoutmaul", "Stromhelm", "Torngren", "Vestrigard", "Vithurdur",]
ELVEN_MALE = ["Aeredor", "Ahradehl", "Alaian", "Belian", "Carrith", "Celiden", "Cillorren", "Cuilien", "Drelinor", "Einar", "Elgrenos", "Erian", "Faelyn", "Farwedran", "Glymestian", "Haldirel", "Lathlaeryl", "Lioredhel", "Maerelios", "Mheinn", "Nimonaer", "Omerowin", "Quennis", "Salagant", "Sythalian", "Teleros", "Thalios", "Thefir", "Thel-volad", "Vasilon",]
ELVEN_FEMALE = ["Alvastra", "Amerie", "Aurin", "Bethalwyn", "Caeridrial", "Chanantra", "Dayrenal", "Denothia", "Eawren", "Eladrie", "Finella", "Gwindorae", "Halaena", "Idronia", "Jenoreth", "Joylen", "Keana", "Leithe", "Loramys", "Maeve", "Miayra", "Mythewyn", "Nirdenel", "Qianna", "Qirelleah", "Tanera", "Thearnial", "Tryllophine", "Vellanthia", "Xennadria",]
ELVEN_SURNAME = ["Aedinehl", "Amarhel", "Aurendil", "Briarsong", "Brightstream", "Crystinarial", "Darkwood", "Dlerdara", "Duskglow", "Elindor", "Elkrun", "Erlaedar", "Fairstar", "Galandelor", "Gemsong", "Goldenbrook", "Hestirdawn", "Ilcerethil", "Immereil", "Leafsong", "Loraethore", "Lunardon", "Mithalyn", "Moonbow", "Nhealadel", "Nightshine", "Olyndra", "Phanthea", "Purebrook", "Raeglemere", "Rainflower", "Rhyllandor", "Shalandalon", "Silverblade", "Starleaf", "Toravaen", "Veverynth", "Whitestar", "Willowpool", "Xenthae",]
FAE_MALE = ["Ahden", "Aletris", "Arnit", "Astur", "Banyan", "Chane", "Colme", "Ewen", "Fleury", "Flitt", "Gaven", "Heath", "Heron", "Kyefer", "Lindin", "Lonan", "Oleandur", "Perye", "Quesnel", "Quyll", "Rue", "Saige", "Sedar", "Selyyn", "Sorral", "Tomer", "Yael", "Yarrow", "Zahur", "Zephyr",]
FAE_FEMALE = ["Acacia", "Alyvia", "Aviana", "Azami", "Betoney", "Cassia", "Cerise", "Defne", "Ellery", "Elswyth", "Ever", "Flori", "Freesia", "Hazel", "Hollee", "Ione", "Ivie", "Kayla", "Krys", "Liana", "Nenalla", "Orchid", "Petal", "Rayin", "Saffron", "Tansy", "Vana", "Willow", "Wryn", "Yew",]
FAE_SURNAME = ["Aedinehl", "Amarhel", "Aurendil", "Briarsong", "Brightstream", "Crystinarial", "Darkwood", "Dlerdara", "Duskglow", "Elindor", "Elkrun", "Erlaedar", "Fairstar", "Galandelor", "Gemsong", "Goldenbrook", "Hestirdawn", "Ilcerethil", "Immereil", "Leafsong", "Loraethore", "Lunardon", "Mithalyn", "Moonbow", "Nhealadel", "Nightshine", "Olyndra", "Phanthea", "Purebrook", "Raeglemere", "Rainflower", "Rhyllandor", "Shalandalon", "Silverblade", "Starleaf", "Toravaen", "Veverynth", "Whitestar", "Willowpool", "Xenthae",]
GNOMISH_MALE = ["Aimo", "Antti", "Bjarni", "Blynn", "Dursley", "Esher", "Furlan", "Galliero", "Glister", "Gylfi", "Jeroen", "Krebbe", "Kyrie", "Larner", "Luckas", "Ninian", "Numan", "Ocobi", "Perran", "Rin", "Robbo", "Rurik", "Sawney", "Snorri", "Tamr", "Teemu", "Topham", "Vorber", "Wentri", "Wollert",]
GNOMISH_FEMALE = ["Adela", "Alminta", "Blethann", "Celana", "Deara", "Dyan", "Edda", "Fladday", "Florrie", "Glinni", "Hunay", "Jyra", "Lorith", "Luelle", "Lyda", "Mardi", "Nessani", "Ornalla", "Preena", "Quidery", "Rae", "Rena", "Satra", "Shona", "Tamsin", "Tova", "Unsara", "Vandi", "Vulla", "Zenday",]
GNOMISH_SURNAME = ["Apperding", "Ardendoren", "Balabar", "Bellowcog", "Blimthimbel", "Borten", "Casimir", "Comperen", "Dengledor", "Elster", "Faskettel", "Fenthwick", "Finndook", "Gemwoggle", "Goodridge", "Gregers", "Halvorsen", "Hymrumpel", "Ickelmoor", "Jorndilmel", "Kyrihorn", "Meadment", "Nockfinny", "Nordli", "Ollyrun", "Pindlemor", "Quindelest", "Rakestraw", "Rowduckel", "Sandbender", "Sibbern", "Skeriteal", "Terneb", "Tinkerwoms", "Uvoring", "Villiordel", "Wrenmuckle", "Yimbel", "Zephizzle", "Zyggyror",]
HALFLING_MALE = ["Alvar", "Ancell", "Arrol", "Bonde", "Colen", "Corow", "Dewar", "Dugold", "Eldon", "Esko", "Eugen", "Finley", "Fon", "Gyg", "Hep", "Iven", "Javis", "Jesper", "Kiy", "Lorne", "Loudon", "Nicol", "Ottesen", "Pehr", "Pibben", "Renny", "Rhett", "Tam", "Tarner", "Urho",]
HALFLING_FEMALE = ["Ailsa", "Asta", "Danna", "Dooni", "Dyas", "Fendona", "Flotta", "Frewa", "Giata", "Jara", "Jemena", "Leena", "Lewyn", "Livy", "Maree", "Mari", "Mela", "Monae", "Niah", "Peddie", "Ria", "Rosia", "Shari", "Svala", "Tilly", "Vaila", "Veleda", "Xina", "Yasmyn", "Zoha",]
HALFLING_SURNAME = [ "Aberfelly", "Albedyll", "Baillie", "Bankole", "Bilbarry", "Brambledown", "Carraday", "Dalrymple", "Durnwobble", "Emmifally", "Farrowbowl", "Fastfoot", "Feehilly", "Gleaves", "Graemsay", "Highthorpe", "Hornboggle", "Irismantle", "Jumblerun", "Koolglade", "Lightbody", "Malurdally", "Mollburrough", "Nellyrun", "Niteywind", "Orinbally", "Ostgood", "Plaelilly", "Quibbledor", "Quillridge", "Redimellon", "Roundhill", "Soarberry", "Tallybool", "Thornhill", "Underwing", "Valleyshorn", "Violetmare", "Willowbrow", "Yoddelhill",]
HUMAN_MALE = ["Anund", "Arvid", "Birger", "Broch", "Byram", "Callow", "Clausen", "Demian", "Dumas", "Garath", "Gustavus", "Handrich", "Illiam", "Jayceon", "Jereth", "Kavel", "Kron", "Landen", "Lennart", "Petr", "Remy", "Renton", "Rowand", "Salen", "Torin", "Trannish", "Tyeron", "Valdemar", "Westan", "Zaid",]
HUMAN_FEMALE = ["Amelie", "Attaie", "Aubray", "Breanne", "Cierrana", "Divora", "Estrid", "Evlynn", "Flerina", "Grianna", "Heleen", "Helina", "Janis", "Karyna", "Klara", "Lorey", "Marit", "Mela", "Merina", "Preshy", "Richeza", "Rissa", "Roshelle", "Selanie", "Tacie", "Tove", "Ullyra", "Valari", "Xandria", "Zavala",]
HUMAN_SURNAME = ["Agathon", "Alban", "Audsley", "Borgun", "Bridson", "Bronkhorst", "Brundage", "Canthar", "Dallan", "Essen", "Farthing", "Grayden", "Grenrohm", "Halonen", "Handrich", "Haraldsen", "Jaldeer", "Karstadt", "Kierman", "Krellith", "Langenhorn", "Lewthwaite", "Maler", "Marston", "Monroy", "Morriche", "Nasmyth", "Ormdrad", "Pholgren", "Platen", "Quilliam", "Raeburn", "Ravenov", "Shanorth", "Thulesh", "Trentain", "Urnst", "Uthorn", "Wardlaw", "Wentide",]
ORCISH_MALE = ["Akar", "Arik", "Auld", "Castoro", "Cromar", "Cruus", "Dacar", "Daklan", "Eljron", "Feldurk", "Garnn", "Goran", "Haa-kan", "Haukur", "Hladek", "Kalahn", "Kanaan", "Korrson", "Noolan", "Ogg", "Polgar", "Rahman", "Ril-kog", "Roos", "Runar", "Ryhrd", "Speke", "Tolorg", "Uradech", "Vigdis",]
ORCISH_FEMALE = ["Aleqa", "Amozura", "Braatiz", "Bur-ra", "Cormona", "Dozira", "Ekalemi", "Falatuge", "Gara", "Gir-ree", "Halla", "Hembra", "Jutta", "Ketamyra", "Klaz-tih", "Larzy", "Myurr", "Nehfah", "Pariti", "Rada", "Ragna", "Rei-soh", "Sanarix", "Slurag", "Sokol", "Tarja", "Torda", "Unnur", "Viveros", "Wah-yeeh",]
ORCISH_SURNAME = ["Angstrong", "Axadorn", "Bloodaxe", "Boachan", "Bonesplitx", "Chorkath", "Croshdok", "Dirgloom", "Drodranon", "Exidoth", "Fallonkar", "Frostmalice", "Gidosk", "Horshkirk", "Houmkargen", "Jadadoon", "Kagg", "Kalagor", "Krankort", "Lumstus", "Mattockson", "Medhonach", "Nailstotor", "Orgotar", "Plowsplit", "Ragesworn", "Rathskull", "Redfang", "Shumolk", "Skules", "Smashstone", "Stratchan", "Taurbull", "Temagurn", "Uthalghud", "Vhidjar", "Wartooth", "Yangutt", "Zerksfist", "Zkirving",]
TIEFLING_MALE = ["Antonon", "Aristou", "Arxez", "Azion", "Barvius", "Cemil", "Closmir", "Demadius", "Dymian", "Erikos", "Ferroz", "Gondaxus", "Heiligen", "Helliar", "Iamut", "Kasen", "Kolstad ", "Leonys ", "Masek", "Meikle", "Nychol ", "Parus", "Relenus ", "Ryves", "Sarnox", "Skaer", "Thymakas ", "Vosilius ", "Xantch ", "Zarrius",]
TIEFLING_FEMALE = ["Allyra", "Angourie", "Ascania", "Bilotta", "Charania", "Degala", "Dygrea", "Eilika", "Getheta", "Gissell", "Hicria", "Iona", "Jalluna", "Kalhalah", "Kebisa", "Lavtari", "Mhealhasta ", "Nalmione ", "Nemissa ", "Pryseis", "Quelaia", "Rarcissa ", "Sitara", "Swonae", "Tiziana", "Uynarey ", "Vasilios", "Xotori", "Zailvari", "Zirianna",]
TIEFLING_SURNAME = ["Agathon", "Alban", "Audsley", "Borgun", "Bridson", "Bronkhorst", "Brundage", "Canthar", "Dallan", "Essen", "Farthing", "Grayden", "Grenrohm", "Halonen", "Handrich", "Haraldsen", "Jaldeer", "Karstadt", "Kierman", "Krellith", "Langenhorn", "Lewthwaite", "Maler", "Marston", "Monroy", "Morriche", "Nasmyth", "Ormdrad", "Pholgren", "Platen", "Quilliam", "Raeburn", "Ravenov", "Shanorth", "Thulesh", "Trentain", "Urnst", "Uthorn", "Wardlaw", "Wentide",]



class NPC
  def gen_dragonborn()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{DRAGONBORN_FEMALE.sample} #{DRAGONBORN_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{DRAGONBORN_MALE.sample} #{DRAGONBORN_SURNAME.sample}.\n"
      else puts "Try again, please."
     end
  end
    
  def gen_dwarf()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
          puts
          print "Their name is #{DWARVEN_FEMALE.sample} #{DWARVEN_SURNAME.sample}.\n"
      elsif gender.include?("male")
          puts
          print "Their name is #{DWARVEN_MALE.sample} #{DWARVEN_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_elf()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{ELVEN_FEMALE.sample} #{ELVEN_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{ELVEN_MALE.sample} #{ELVEN_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_fae()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{FAE_FEMALE.sample} #{FAE_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{FAE_MALE.sample} #{FAE_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_gnome()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{GNOMISH_FEMALE.sample} #{GNOMISH_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{GNOMISH_MALE.sample} #{GNOMISH_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_halfling()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{HALFLING_FEMALE.sample} #{HALFLING_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{HALFLING_MALE.sample} #{HALFLING_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_human()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{HUMAN_FEMALE.sample} #{HUMAN_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{HUMAN_MALE.sample} #{HUMAN_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_orc()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{ORCISH_FEMALE.sample} #{ORCISH_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{ORCISH_MALE.sample} #{ORCISH_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
    
  def gen_tiefling()
    puts "What's the character's gender?"
      gender = $stdin.gets.downcase.chomp
      if gender.include?("f")
        puts
        print "Their name is #{TIEFLING_FEMALE.sample} #{TIEFLING_SURNAME.sample}.\n"
      elsif gender.include?("male")
        puts
        print "Their name is #{TIEFLING_MALE.sample} #{TIEFLING_SURNAME.sample}.\n"
      else puts "Try again, please."
    end
  end
end

class  NPC
  require NPC_Generator
  def initialize()
    @character = $stdin.gets.downcase.chomp 
  end
end