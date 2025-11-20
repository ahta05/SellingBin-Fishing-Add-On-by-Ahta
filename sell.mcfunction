# ============================================
# SellingBin Fishing Add-On by Ahta
# File: sell.mcfunction
# Purpose: Logic penjualan ikan raw & cooked
# ============================================

# -------------------------
# RAW ANIMALS (quest + jual)
# -------------------------

# Yellowfin Tuna (raw) → 2 emerald
execute as @p[hasitem={item=mnp_ci:animal_yellowfin_tuna,quantity=1}] run clear @p mnp_ci:animal_yellowfin_tuna 1
execute as @p run give @p minecraft:emerald 2

# Swordfish (raw) → 3 emerald
execute as @p[hasitem={item=mnp_ci:animal_swordfish,quantity=1}] run clear @p mnp_ci:animal_swordfish 1
execute as @p run give @p minecraft:emerald 3

# Striped Bass (raw) → 2 iron ingot
execute as @p[hasitem={item=mnp_ci:animal_striped_bass,quantity=1}] run clear @p mnp_ci:animal_striped_bass 1
execute as @p run give @p minecraft:iron_ingot 2

# Shad (raw) → 1 iron ingot
execute as @p[hasitem={item=mnp_ci:animal_shad,quantity=1}] run clear @p mnp_ci:animal_shad 1
execute as @p run give @p minecraft:iron_ingot 1

# Sea Urchin (raw) → 1 emerald
execute as @p[hasitem={item=mnp_ci:animal_sea_urchin,quantity=1}] run clear @p mnp_ci:animal_sea_urchin 1
execute as @p run give @p minecraft:emerald 1

# Sea Bass (raw) → 2 iron ingot
execute as @p[hasitem={item=mnp_ci:animal_sea_bass,quantity=1}] run clear @p mnp_ci:animal_sea_bass 1
execute as @p run give @p minecraft:iron_ingot 2

# Salmon King (raw) → 1 diamond
execute as @p[hasitem={item=mnp_ci:animal_salmon_king,quantity=1}] run clear @p mnp_ci:animal_salmon_king 1
execute as @p run give @p minecraft:diamond 1

# Pearl Oyster (raw) → 1 diamond + 1 emerald
execute as @p[hasitem={item=mnp_ci:animal_pearl_oyster,quantity=1}] run clear @p mnp_ci:animal_pearl_oyster 1
execute as @p run give @p minecraft:diamond 1
execute as @p run give @p minecraft:emerald 1

# Mahi-Mahi (raw) → 2 emerald
execute as @p[hasitem={item=mnp_ci:animal_mahi_mahi,quantity=1}] run clear @p mnp_ci:animal_mahi_mahi 1
execute as @p run give @p minecraft:emerald 2

# Lionfish (raw) → 4 emerald
execute as @p[hasitem={item=mnp_ci:animal_lionfish,quantity=1}] run clear @p mnp_ci:animal_lionfish 1
execute as @p run give @p minecraft:emerald 4

# Golden Trout (raw) → 2 diamond
execute as @p[hasitem={item=mnp_ci:animal_golden_trout,quantity=1}] run clear @p mnp_ci:animal_golden_trout 1
execute as @p run give @p minecraft:diamond 2

# Giant Goldfish (raw) → 2 diamond
execute as @p[hasitem={item=mnp_ci:animal_giant_goldfish,quantity=1}] run clear @p mnp_ci:animal_giant_goldfish 1
execute as @p run give @p minecraft:diamond 2

# Giant Clam (raw) → 3 diamond
execute as @p[hasitem={item=mnp_ci:animal_giant_clam,quantity=1}] run clear @p mnp_ci:animal_giant_clam 1
execute as @p run give @p minecraft:diamond 3

# Flounder (raw) → 2 iron ingot
execute as @p[hasitem={item=mnp_ci:animal_flounder,quantity=1}] run clear @p mnp_ci:animal_flounder 1
execute as @p run give @p minecraft:iron_ingot 2

# Crab (raw) → 3 iron ingot
execute as @p[hasitem={item=mnp_ci:animal_crab,quantity=1}] run clear @p mnp_ci:animal_crab 1
execute as @p run give @p minecraft:iron_ingot 3

# Barracuda (raw) → 2 emerald
execute as @p[hasitem={item=mnp_ci:animal_barracuda,quantity=1}] run clear @p mnp_ci:animal_barracuda 1
execute as @p run give @p minecraft:emerald 2

# Anchovy (raw) → 1 iron ingot
execute as @p[hasitem={item=mnp_ci:animal_anchovy,quantity=1}] run clear @p mnp_ci:animal_anchovy 1
execute as @p run give @p minecraft:iron_ingot 1

# -------------------------
# COOKED ANIMALS (jual saja)
# -------------------------

# Yellowfin Tuna (cooked) → 3 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_yellowfin_tuna,quantity=1}] run clear @p mnp_ci:cooked_animal_yellowfin_tuna 1
execute as @p run give @p minecraft:emerald 3

# Swordfish (cooked) → 4 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_swordfish,quantity=1}] run clear @p mnp_ci:cooked_animal_swordfish 1
execute as @p run give @p minecraft:emerald 4

# Striped Bass (cooked) → 3 iron ingot
execute as @p[hasitem={item=mnp_ci:cooked_animal_striped_bass,quantity=1}] run clear @p mnp_ci:cooked_animal_striped_bass 1
execute as @p run give @p minecraft:iron_ingot 3

# Shad (cooked) → 2 iron ingot
execute as @p[hasitem={item=mnp_ci:cooked_animal_shad,quantity=1}] run clear @p mnp_ci:cooked_animal_shad 1
execute as @p run give @p minecraft:iron_ingot 2

# Sea Urchin (cooked) → 2 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_sea_urchin,quantity=1}] run clear @p mnp_ci:cooked_animal_sea_urchin 1
execute as @p run give @p minecraft:emerald 2

# Sea Bass (cooked) → 3 iron ingot
execute as @p[hasitem={item=mnp_ci:cooked_animal_sea_bass,quantity=1}] run clear @p mnp_ci:cooked_animal_sea_bass 1
execute as @p run give @p minecraft:iron_ingot 3

# Salmon King (cooked) → 2 diamond
execute as @p[hasitem={item=mnp_ci:cooked_animal_salmon_king,quantity=1}] run clear @p mnp_ci:cooked_animal_salmon_king 1
execute as @p run give @p minecraft:diamond 2

# Pearl Oyster (cooked) → 1 diamond + 2 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_pearl_oyster,quantity=1}] run clear @p mnp_ci:cooked_animal_pearl_oyster 1
execute as @p run give @p minecraft:diamond 1
execute as @p run give @p minecraft:emerald 2

# Mahi-Mahi (cooked) → 3 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_mahi_mahi,quantity=1}] run clear @p mnp_ci:cooked_animal_mahi_mahi 1
execute as @p run give @p minecraft:emerald 3

# Lionfish (cooked) → 5 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_lionfish,quantity=1}] run clear @p mnp_ci:cooked_animal_lionfish 1
execute as @p run give @p minecraft:emerald 5

# Golden Trout (cooked) → 3 diamond
execute as @p[hasitem={item=mnp_ci:cooked_animal_golden_trout,quantity=1}] run clear @p mnp_ci:cooked_animal_golden_trout 1
execute as @p run give @p minecraft:diamond 3

# Giant Goldfish (cooked) → 3 diamond
execute as @p[hasitem={item=mnp_ci:cooked_animal_giant_goldfish,quantity=1}] run clear @p mnp_ci:cooked_animal_giant_goldfish 1
execute as @p run give @p minecraft:diamond 3

# Giant Clam (cooked) → 4 diamond
execute as @p[hasitem={item=mnp_ci:cooked_animal_giant_clam,quantity=1}] run clear @p mnp_ci:cooked_animal_giant_clam 1
execute as @p run give @p minecraft:diamond 4

# Flounder (cooked) → 3 iron ingot
execute as @p[hasitem={item=mnp_ci:cooked_animal_flounder,quantity=1}] run clear @p mnp_ci:cooked_animal_flounder 1
execute as @p run give @p minecraft:iron_ingot 3

# Crab (cooked) → 4 iron ingot
execute as @p[hasitem={item=mnp_ci:cooked_animal_crab,quantity=1}] run clear @p mnp_ci:cooked_animal_crab 1
execute as @p run give @p minecraft:iron_ingot 4

# Barracuda (cooked) → 3 emerald
execute as @p[hasitem={item=mnp_ci:cooked_animal_barracuda,quantity=1}] run clear @p mnp_ci:cooked_animal_barracuda 1
execute as @p run give @p minecraft:emerald 3

# Anchovy (cooked) → 2 iron ingot
execute as @p[hasitem={item=mnp_ci:cooked_animal_anchovy,quantity=1}] run clear @p mnp_ci:cooked_animal_anchovy 1
execute as @p run give @p minecraft:iron_ingot 2

# -------------------------
# Feedback (opsional)
# -------------------------
tellraw @p {"rawtext":[{"text":"§a[SellingBin] Penjualan diproses."}]}
