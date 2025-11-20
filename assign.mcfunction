# ============================================
# SellingBin Fishing Add-On by Ahta
# File: assign.mcfunction
# Purpose: Mapping quest_random → quest_id
# ============================================

# Anchovy
execute if score @p quest_random matches 1 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Anchovy 20"}]}
execute if score @p quest_random matches 2 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Anchovy 30"}]}
execute if score @p quest_random matches 3 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Anchovy 40"}]}

# Shad
execute if score @p quest_random matches 4 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Shad 15"}]}
execute if score @p quest_random matches 5 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Shad 25"}]}
execute if score @p quest_random matches 6 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Shad 35"}]}

# Striped Bass
execute if score @p quest_random matches 7 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Striped Bass 10"}]}
execute if score @p quest_random matches 8 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Striped Bass 18"}]}
execute if score @p quest_random matches 9 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Striped Bass 25"}]}

# Sea Bass
execute if score @p quest_random matches 10 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Sea Bass 12"}]}
execute if score @p quest_random matches 11 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Sea Bass 20"}]}
execute if score @p quest_random matches 12 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Sea Bass 28"}]}

# Yellowfin Tuna
execute if score @p quest_random matches 13 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Yellowfin Tuna 8"}]}
execute if score @p quest_random matches 14 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Yellowfin Tuna 15"}]}
execute if score @p quest_random matches 15 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Yellowfin Tuna 25"}]}

# Swordfish
execute if score @p quest_random matches 16 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Swordfish 12"}]}
execute if score @p quest_random matches 17 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Swordfish 18"}]}
execute if score @p quest_random matches 18 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Swordfish 25"}]}

# Lionfish
execute if score @p quest_random matches 19 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Lionfish 10"}]}
execute if score @p quest_random matches 20 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Lionfish 15"}]}
execute if score @p quest_random matches 21 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Lionfish 22"}]}

# Golden Trout
execute if score @p quest_random matches 22 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Golden Trout 5"}]}
execute if score @p quest_random matches 23 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Golden Trout 10"}]}
execute if score @p quest_random matches 24 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Golden Trout 15"}]}

# Giant Goldfish
execute if score @p quest_random matches 25 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Giant Goldfish 6"}]}
execute if score @p quest_random matches 26 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Giant Goldfish 12"}]}
execute if score @p quest_random matches 27 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Giant Goldfish 18"}]}

# Giant Clam
execute if score @p quest_random matches 28 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Giant Clam 6"}]}
execute if score @p quest_random matches 29 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Giant Clam 10"}]}

# Salmon King
execute if score @p quest_random matches 30 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Salmon King 5"}]}
execute if score @p quest_random matches 31 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Salmon King 8"}]}
execute if score @p quest_random matches 32 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Salmon King 12"}]}

# Pearl Oyster
execute if score @p quest_random matches 33 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Pearl Oyster 4"}]}
execute if score @p quest_random matches 34 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Pearl Oyster 7"}]}
execute if score @p quest_random matches 35 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Pearl Oyster 10"}]}

# Mahi-Mahi
execute if score @p quest_random matches 36 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Mahi-Mahi 7"}]}
execute if score @p quest_random matches 37 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Mahi-Mahi 12"}]}
execute if score @p quest_random matches 38 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Mahi-Mahi 18"}]}

# Sea Urchin
execute if score @p quest_random matches 39 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Sea Urchin 10"}]}
execute if score @p quest_random matches 40 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Sea Urchin 15"}]}
execute if score @p quest_random matches 41 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Sea Urchin 20"}]}

# Barracuda
execute if score @p quest_random matches 42 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Barracuda 8"}]}
execute if score @p quest_random matches 43 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Barracuda 12"}]}
execute if score @p quest_random matches 44 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Barracuda 18"}]}

# Crab
execute if score @p quest_random matches 45 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Crab 10"}]}
execute if score @p quest_random matches 46 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Crab 15"}]}
execute if score @p quest_random matches 47 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Crab 20"}]}

# Flounder
execute if score @p quest_random matches 48 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Flounder 12"}]}
execute if score @p quest_random matches 49 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Flounder 18"}]}
execute if score @p quest_random matches 50 run tellraw @p {"rawtext":[{"text":"§bQuest Hari Ini: Flounder 25"}]}
