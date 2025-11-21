import { world, system, ItemStack, Player, MinecraftItemTypes } from "@minecraft/server";
import { ActionFormData, ModalFormData } from "@minecraft/server-ui";

/* ==========================================================
   FRIENDLY FISHING RAW & COOKED ITEM LIST
   ========================================================== */
const RAW_FISH = [
    "mnp_ci:animal_yellowfin_tuna",
    "mnp_ci:animal_swordfish",
    "mnp_ci:animal_striped_bass",
    "mnp_ci:animal_shad",
    "mnp_ci:animal_sea_urchin",
    "mnp_ci:animal_sea_bass",
    "mnp_ci:animal_salmon_king",
    "mnp_ci:animal_pearl_oyster",
    "mnp_ci:animal_mahi_mahi",
    "mnp_ci:animal_lionfish",
    "mnp_ci:animal_golden_trout",
    "mnp_ci:animal_giant_goldfish",
    "mnp_ci:animal_giant_clam",
    "mnp_ci:animal_flounder",
    "mnp_ci:animal_crab",
    "mnp_ci:animal_barracuda",
    "mnp_ci:animal_anchovy"
];

const COOKED_FISH = [
    "mnp_ci:cooked_animal_yellowfin_tuna",
    "mnp_ci:cooked_animal_swordfish",
    "mnp_ci:cooked_animal_striped_bass",
    "mnp_ci:cooked_animal_shad",
    "mnp_ci:cooked_animal_sea_urchin",
    "mnp_ci:cooked_animal_sea_bass",
    "mnp_ci:cooked_animal_salmon_king",
    "mnp_ci:cooked_animal_pearl_oyster",
    "mnp_ci:cooked_animal_mahi_mahi",
    "mnp_ci:cooked_animal_lionfish",
    "mnp_ci:cooked_animal_golden_trout",
    "mnp_ci:cooked_animal_giant_goldfish",
    "mnp_ci:cooked_animal_giant_clam",
    "mnp_ci:cooked_animal_flounder",
    "mnp_ci:cooked_animal_crab",
    "mnp_ci:cooked_animal_barracuda",
    "mnp_ci:cooked_animal_anchovy"
];

/* ==========================================================
   QUEST DATA (akan digenerate ulang setiap hari)
   ========================================================== */

let dailyQuests = [];
let lastQuestDay = -1;

const QUEST_REWARD = ["minecraft:diamond", "minecraft:emerald", "minecraft:iron_ingot", "minecraft:gold_ingot"];

/* ==========================================================
   Generate daily quests
   ========================================================== */
function generateDailyQuests() {
    dailyQuests = [];

    for (let i = 0; i < 3; i++) {
        const isRaw = Math.random() < 0.5;
        const list = isRaw ? RAW_FISH : COOKED_FISH;

        const item = list[Math.floor(Math.random() * list.length)];
        const amount = Math.floor(Math.random() * 6) + 2; // 2–7 item
        const reward = QUEST_REWARD[Math.floor(Math.random() * QUEST_REWARD.length)];

        dailyQuests.push({
            item,
            amount,
            reward
        });
    }

    console.warn("[SellingBin] Daily quests updated:", JSON.stringify(dailyQuests));
}

/* ==========================================================
   Check apakah hari sudah berubah → regenerate quest
   ========================================================== */
system.runInterval(() => {
    const day = Math.floor(world.getTime() / 24000);

    if (day !== lastQuestDay) {
        lastQuestDay = day;
        generateDailyQuests();
    }
}, 200);

/* ==========================================================
   GUI — Menu utama SellingBin
   ========================================================== */
function openSellingBinMenu(player) {
    const ui = new ActionFormData()
        .title("§l§2Selling Bin")
        .body("Pilih fitur yang ingin digunakan:")
        .button("§lJual Item")
        .button("§lDaily Quest");

    ui.show(player).then(res => {
        if (res.canceled) return;

        if (res.selection === 0) openSellUI(player);
        if (res.selection === 1) openQuestUI(player);
    });
}

/* ==========================================================
   GUI — Daily Quests
   ========================================================== */
function openQuestUI(player) {
    let text = "§e§lDaily Quests\n\n";

    dailyQuests.forEach((q, i) => {
        text += `§lQuest ${i + 1}\n`;
        text += `Item: §b${q.item}\n`;
        text += `Jumlah: §a${q.amount}\n`;
        text += `Reward: §6${q.reward}\n\n`;
    });

    const form = new ActionFormData()
        .title("§l§aDaily Quests")
        .body(text)
        .button("Tutup");

    form.show(player);
}

/* ==========================================================
   Sistem penjualan (sementara versi simple)
   ========================================================== */
function openSellUI(player) {
    const inv = player.getComponent("inventory").container;
    let totalPrice = 0;

    for (let i = 0; i < inv.size; i++) {
        const it = inv.getItem(i);
        if (!it) continue;

        if (RAW_FISH.includes(it.typeId)) {
            totalPrice += it.amount;
            inv.setItem(i, undefined);
        }
    }

    if (totalPrice > 0) {
        player.getComponent("inventory").container.addItem(new ItemStack("minecraft:emerald", totalPrice));
        player.sendMessage(`§aBerhasil menjual ikan mentah! §fTotal Emerald: §a${totalPrice}`);
    } else {
        player.sendMessage("§cTidak ada raw fish dalam inventory untuk dijual.");
    }
}

/* ==========================================================
   EVENT — Saat player interact dengan block SellingBin
   ========================================================== */
world.afterEvents.playerInteractWithBlock.subscribe(ev => {
    const { player, block } = ev;

    if (block.typeId === "selling_bin:selling_bin") {
        openSellingBinMenu(player);
    }
});
