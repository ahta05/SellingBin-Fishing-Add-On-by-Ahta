# ============================================
# SellingBin Fishing Add-On by Ahta
# File: init.mcfunction
# Purpose: Inisialisasi scoreboard & data dasar
# ============================================

# Buat scoreboard untuk penjualan ikan (raw & cooked)
scoreboard objectives add sell_fish dummy "Selling Bin - Fish Sales"

# Buat scoreboard untuk quest harian (progress tiap ikan raw)
scoreboard objectives add quest_progress dummy "Selling Bin - Quest Progress"

# Buat scoreboard untuk refresh quest (reset harian)
scoreboard objectives add quest_day dummy "Selling Bin - Quest Day"

# Set nilai awal quest_day ke 0
scoreboard players set @a quest_day 0

# Pesan debug (opsional, bisa dihapus)
tellraw @a {"rawtext":[{"text":"§a[SellingBin] Scoreboard initialized!"}]}
