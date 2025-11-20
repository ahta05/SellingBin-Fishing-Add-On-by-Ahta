# ============================================
# SellingBin Fishing Add-On by Ahta
# File: quest_check.mcfunction
# Purpose: Cek progress quest & berikan reward
# ============================================

# Cek apakah player sudah memenuhi quest_progress
execute as @p if score @p quest_progress matches 0 run function quests/reward
