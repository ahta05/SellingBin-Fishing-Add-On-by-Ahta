# ============================================
# SellingBin Fishing Add-On by Ahta
# File: quest_refresh.mcfunction
# Purpose: Reset & pilih quest harian dari pool
# ============================================

# Reset progress quest semua player
scoreboard players set @a quest_progress 0

# Tambah hari quest (tracking harian)
scoreboard players add @a quest_day 1

# Random quest_id (1–50 sesuai pool di quests.json)
scoreboard objectives add quest_random dummy
scoreboard players set @a quest_random 0
scoreboard players random @a quest_random 1 50

# Trigger quest assignment
# (quest_id dipilih sesuai angka random, lalu quest_check.mcfunction akan handle detail)
function quests/assign
