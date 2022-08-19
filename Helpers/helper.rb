RACES = [
  {
    :name=> "Aarakocra",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/804/420/618/637880558236223926.png"
  },
  {
    :name=> "Aasimar",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/807/420/618/637880558241494569.png"
  },
  {
    :name=> "Bugbear",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/813/420/618/637880558250685392.png"
  },
  {
    :name=> "Centaur",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/816/420/618/637880558254505597.png"
  },
  {
    :name=> "Dragonborn",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/633/320/742/dragonborn.png"
  },
  {
    :name=> "Dwarf",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/612/320/408/dwarf.png"
  },
  {
    :name=> "Eladrin",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/832/420/618/637880558282348356.png"
  },
  {
    :name=> "Elf",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/620/350/610/elf.png"
  },
  {
    :name=> "Firbolg",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/835/420/618/637880558287118658.png"
  },
  {
    :name=> "Gnome",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/637/335/335/gnome.png"
  },
  {
    :name=> "Goblin",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/847/420/618/637880558306570398.png"
  },
  {
    :name=> "Half-Elf",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/640/350/510/half-elf.png"
  },
  {
    :name=> "Half-Orc",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/643/320/426/half-orc.png"
  },
  {
    :name=> "Halfling",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/626/320/466/halfling.png"
  },
  {
    :name=> "Hobgoblin",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/853/420/618/637880558315531201.png"
  },
  {
    :name=> "Human",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/629/320/541/human.png"
  },
  {
    :name=> "Kobold",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/859/420/618/637880558324802216.png"
  },
  {
    :name=> "Lizardfolk",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/862/420/618/637880558327992400.png"
  },
  {
    :name=> "Orc",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/868/420/618/637880558338973440.png"
  },
  {
    :name=> "Tabaxi",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/883/420/618/637880558363345793.png"
  },
  {
    :name=> "Tiefling",
    :image=> "https://www.dndbeyond.com/attachments/thumbnails/0/646/280/441/tiefling.png"
  },
  {
    :name=> "Tortle",
    :image=> "https://www.dndbeyond.com/avatars/thumbnails/25746/886/420/618/637880558369026202.png"
  }
]

def image(race)
  return "/imagine #{race[:image]}, portrait, dnd #{race[:name]}, painterly, character art --seed 1876"
end

def no_image(race)
  return "/imagine portrait, dnd #{race[:name]}, painterly, character art --seed 1876"
end

def generate_prompts
  RACES.each do |race|
    puts image(race)
    puts no_image(race)
    puts
    puts
  end
end

def generate_markdown_rows
  RACES.each do |race|
    puts "
    | #{race[:name].capitalize} | [URL](#{race[:image]}) | - |
    |  | ![#{race[:name].capitalize}](/Images/#{race[:name].capitalize}_Basic_Image.png) | ![#{race[:name].capitalize}](/Images/#{race[:name].capitalize}_Basic_NoImage.png) |
    "
    puts
  end
end
