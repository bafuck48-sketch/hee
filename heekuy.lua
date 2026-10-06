-- ==========================================
-- 🟢 SourcesHub Steal An Egg - Thai Translator
-- แปลไทยโดย : บาฟัค
-- 📌 Version : Final (SourcesHub Edition)
-- ==========================================

local GuiService = gethui and gethui() or game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

-- ==========================================
-- 📚 1. DICTIONARY
-- ==========================================

local dict = {
    -- 🏷️ ชื่อสคริปต์ (ฝังเครดิต)
    ["SourcesHub"] = "SourcesHub",
    ["Steal An Egg"] = "แปลไทยโดย : บาฟัค",
    ["VIREX"] = "SourcesHub",

    -- 📑 แท็บหลัก (Tab)
    ["Main"] = "🏠 หลัก",
    ["Combat"] = "⚔️ ต่อสู้",
    ["Boosts"] = "🚀 บูสต์",
    ["Server"] = "🌐 เซิร์ฟเวอร์",
    ["Misc"] = "⚙️ อื่นๆ",
    ["Config"] = "📁 คอนฟิก",

    -- 🧪 หมวด Dr Scramble Lab & Mech
    ["DR SCRAMBLE LAB & MECH"] = "🧪 LAB & MECH ของ DR SCRAMBLE",
    ["Mech Status"] = "🤖 สถานะ Mech",
    ["Next Mech portal in"] = "🌀 ประตู Mech ถัดไปใน",
    ["Auto Mech Boss"] = "🤖 ออโต้ตีบอส Mech",
    ["Auto Claim Mastery"] = "🏆 ออโต้รับ Mastery",
    ["Claims Boss Mastery rewards as soon as they unlock"] = "รับรางวัล Mastery ทันทีเมื่อปลดล็อก",
    ["Lab Status"] = "🧪 สถานะ Lab",
    ["Lab is locked on this account"] = "🔒 Lab ถูกล็อกในบัญชีนี้",
    ["Lab Banners"] = "🎟️ แบนเนอร์ Lab",
    ["Only trade and steal for these banners (empty = all)"] = "เทรดและขโมยเฉพาะแบนเนอร์เหล่านี้ (เว้นว่าง = ทั้งหมด)",
    ["Auto Lab Trade-In"] = "🔄 ออโต้แลก Lab",
    ["Auto Reroll Lab Recipe"] = "🎲 ออโต้สุ่มสูตร Lab",
    ["Auto Place Lab Reward Eggs"] = "🥚 ออโต้วางไข่รางวัล Lab",
    ["Places the reward eggs from Lab trades"] = "วางไข่รางวัลจากการแลก Lab",
    ["Auto Buy Scramble Shop"] = "🛒 ออโต้ซื้อของร้าน Scramble",
    ["Buy the picked items with Samples"] = "ใช้ Samples ซื้อไอเท็มที่เลือกไว้",
    ["Auto Use Scrambled Mutation"] = "🧬 ออโต้ใช้การกลายพันธุ์ Scrambled",

    -- ⚙️ คำพื้นฐาน
    ["All"] = "ทั้งหมด",
    ["Any"] = "ทุกระดับ",
    ["Off"] = "ปิด",
    ["None"] = "ไม่มี",

    -- 🥚 หมวด Auto Steal
    ["AUTO STEAL"] = "🥚 ออโต้ขโมย",
    ["Auto Steal"] = "🥚 ออโต้ขโมย",
    ["Instant Steal"] = "⚡ ขโมยทันที",
    ["Delivers the egg to the safe zone in a few seconds, needs enough Speed"] = "ส่งไข่ไปยังพื้นที่ปลอดภัยในไม่กี่วินาที ต้องมีความเร็วพอ",
    ["Instant Steal Steps"] = "📊 ขั้นตอนขโมยทันที",
    ["Higher is safer but takes longer"] = "สูงกว่าปลอดภัยกว่าแต่ใช้เวลานานกว่า",
    ["Target Areas"] = "📍 พื้นที่เป้าหมาย",
    ["Min Rarity"] = "💎 ระดับขั้นต่ำ",
    ["Steal eggs of the chosen rarity and every rarity above it"] = "ขโมยไข่ตั้งแต่ระดับที่เลือกขึ้นไป",
    ["Min Steal Value"] = "💰 มูลค่าขั้นต่ำที่จะขโมย",
    ["Skip eggs worth less than this. Drag or type 250k, 50m, 15b"] = "ข้ามไข่ที่มีมูลค่าต่ำกว่านี้ (พิมพ์ 250k, 50m, 15b)",
    ["Target Specific Eggs"] = "🎯 ไข่เป้าหมายเฉพาะ",
    ["Only steal these eggs (empty = all)"] = "ขโมยเฉพาะไข่เหล่านี้ (เว้นว่าง = ทั้งหมด)",
    ["Steal Missing Lab Eggs"] = "🥚 ขโมยไข่ Lab ที่ขาด",
    ["Steal Missing Index Eggs"] = "📖 ขโมยไข่ที่ขาดในสมุด",
    ["Also steal eggs missing from your index, highest area first"] = "ขโมยไข่ที่ยังขาดในสมุด โดยเริ่มจากพื้นที่สูงสุดก่อน",
    ["Steal Priority"] = "🎯 ลำดับการขโมย",
    ["Best Rarity"] = "💎 หายากที่สุด",
    ["Biggest Weight"] = "⚖️ น้ำหนักมากสุด",
    ["Best Mutation"] = "🧬 กลายพันธุ์ดีสุด",
    ["Highest Value"] = "💰 มูลค่าสูงสุด",
    ["Lowest Value"] = "💰 มูลค่าต่ำสุด",
    ["Tween Speed"] = "💨 ความเร็ววาร์ป (Tween)",
    ["Over 100% may glitch"] = "เกิน 100% อาจเกิดข้อผิดพลาด",
    ["Carry Speed"] = "💨 ความเร็วในการถือ",

    -- 🏃 หมวด Auto Treadmill
    ["AUTO TREADMILL"] = "🏃 ออโต้ลู่วิ่ง",
    ["Auto Treadmill"] = "🏃 ออโต้ลู่วิ่ง",
    ["Stay On Treadmill"] = "🔒 อยู่บนลู่วิ่งเสมอ",

    -- 🥚 หมวด Auto Hatch & Equip
    ["AUTO HATCH & EQUIP"] = "🥚 ออโต้ฟัก & สวมใส่",
    ["Auto Hatch"] = "🥚 ออโต้ฟักไข่",
    ["Auto Equip Best"] = "⭐ ออโต้ใส่ตัวที่ดีที่สุด",
    ["Equip Best when a better pet appears"] = "เปลี่ยนไปใส่ตัวที่เก่งกว่าทันทีเมื่อสุ่มได้",

    -- 🔧 หมวด Auto Fuse Machine
    ["AUTO FUSE MACHINE"] = "🔧 ออโต้เครื่องผสมสัตว์",
    ["Fuse Preview"] = "🔍 ตัวอย่างการผสม",
    ["No three matching pets"] = "❌ ไม่มีสัตว์ที่ตรงกัน 3 ตัว",
    ["Auto Fuse Machine"] = "🔧 ออโต้เครื่องผสมสัตว์",
    ["Fuse 3 same pets into an egg, nonstop"] = "ผสมสัตว์ซ้ำกัน 3 ตัวเป็นไข่ แบบไม่หยุด",

    -- ❤️ หมวด Auto Favorite
    ["AUTO FAVORITE"] = "❤️ ออโต้กดถูกใจ",
    ["Favorite Preview"] = "🔍 ตัวอย่างการถูกใจ",
    ["Favorite matches"] = "❤️ รายการที่ถูกใจ",
    ["to mark"] = "รอติ๊ก",
    ["favorited"] = "ถูกใจแล้ว",
    ["Auto Favorite Pet"] = "❤️ ออโต้ถูกใจสัตว์เลี้ยง",
    ["Favorite pets matching the rules below"] = "ถูกใจสัตว์เลี้ยงที่ตรงตามเงื่อนไขด้านล่าง",
    ["Auto Favorite Equipped"] = "❤️ ออโต้ถูกใจสัตว์ที่ใส่อยู่",
    ["Keep equipped pets favorited"] = "ล็อกสัตว์ที่สวมใส่เป็นตัวโปรดเสมอ",
    ["Auto Unfavorite Equipped"] = "💔 ออโต้ปลดถูกใจตัวที่ใส่",
    ["Unfavorite equipped pets not in the rules"] = "ปลดตัวโปรดสัตว์ที่สวมใส่ถ้าไม่ตรงเงื่อนไข",
    ["Favorite Equipped Now"] = "❤️ ถูกใจสัตว์ที่สวมใส่ตอนนี้",
    ["Favorite all equipped pets once"] = "กดถูกใจสัตว์ที่ใส่อยู่ทั้งหมด 1 ครั้ง",
    ["Unfavorite Equipped Now"] = "💔 ปลดถูกใจสัตว์ที่สวมใส่ตอนนี้",
    ["Unfavorite all equipped pets once"] = "ปลดถูกใจสัตว์ที่ใส่อยู่ทั้งหมด 1 ครั้ง",

    -- 👁️ หมวด ESP
    ["ESP"] = "👁️ ESP",
    ["ESP Eggs"] = "🥚 ESP ไข่",
    ["ESP Guards"] = "🛡️ ESP ยาม",
    ["ESP Lost Parts"] = "🧩 ESP ชิ้นส่วนที่หาย",
    ["ESP Players"] = "👥 ESP ผู้เล่น",

    -- 🏃 หมวด Movement
    ["MOVEMENT"] = "🏃 การเคลื่อนที่",
    ["Invisibility"] = "👻 ล่องหน",
    ["Makes you invisible to other players"] = "ทำให้ผู้เล่นอื่นมองไม่เห็นคุณ",
    ["Anti Ragdoll"] = "🛡️ กันล้ม",
    ["Anti Trap"] = "🛡️ กันกับดัก",
    ["Traps from other players cannot catch you"] = "กับดักของผู้เล่นอื่นจะไม่สามารถจับคุณได้",
    ["Instant Prompts"] = "⚡ กด E ทันที",

    -- ⚔️ หมวด Combat
    ["COMBAT"] = "⚔️ การต่อสู้",
    ["Hit Status"] = "📊 สถานะการตี",
    ["Idle"] = "💤 ว่าง",
    ["Auto Hit Nearest Player"] = "⚔️ ออโต้ตีผู้เล่นใกล้สุด",
    ["Auto Hit Egg Holders"] = "🥚 ออโต้ตีคนถือไข่",
    ["Auto Hit Specific Player"] = "🎯 ออโต้ตีผู้เล่นที่เจาะจง",
    ["Hit Aura"] = "💫 ตี Aura",
    ["Chase Settings"] = "🎯 ตั้งค่าการไล่",
    ["Hit Tween Speed"] = "💨 ความเร็ววาร์ปตอนตี",
    ["Hit Max Speed"] = "⚡ ความเร็วสูงสุดตอนตี",
    ["Hit Lead"] = "🎯 ระยะนำเป้า",
    ["Stand further ahead of the target (+) or closer to them (-)"] = "ยืนนำหน้าเป้า (+) หรือใกล้เป้ามากขึ้น (-)",
    ["Hit Sweep"] = "↔️ ระยะกวาด",
    ["How far you move back and forth in front of the target"] = "ระยะที่คุณเคลื่อนที่ไปข้างหน้าและถอยหลังหน้าเป้า",
    ["Add/Remove Hits On Quick Bar 2"] = "➕➖ เพิ่ม/ลบ ปุ่มตีบน Quick Bar 2",
    ["Pin or unpin the hit toggles on Quick Bar 2"] = "ปักหมุดหรือยกเลิกปุ่มตีบน Quick Bar 2",

    -- 🚀 หมวด Boosts
    ["BOOSTS"] = "🚀 บูสต์",
    ["AUTO PROGRESSION"] = "📈 ความคืบหน้าอัตโนมัติ",
    ["Auto Buy Trail"] = "👣 ออโต้ซื้อ Trail",
    ["Automatically buy available trails when affordable"] = "ซื้อ Trail ที่มีให้โดยอัตโนมัติเมื่อเงินเพียงพอ",
    ["Auto Upgrade Base"] = "🏠 ออโต้อัปเกรดฐาน",
    ["Automatically upgrade base when money is available"] = "อัปเกรดฐานอัตโนมัติเมื่อมีเงินเพียงพอ",
    ["Auto Upgrade Treadmill"] = "🏃 ออโต้อัปเกรดลู่วิ่ง",
    ["Automatically upgrade treadmill when money is available"] = "อัปเกรดลู่วิ่งอัตโนมัติเมื่อมีเงินเพียงพอ",
    ["Auto Claim"] = "🎁 ออโต้รับรางวัล",
    ["Claim offline money & index rewards"] = "รับเงินออฟไลน์และรางวัลจากสมุด",
    ["Auto Claim Index"] = "📖 ออโต้รับรางวัลสมุด",
    ["Claim index rewards as soon as they unlock"] = "รับรางวัลทันทีที่ปลดล็อก",

    -- 🌐 หมวด SERVER
    ["Auto Load Script"] = "📜 ออโต้โหลดสคริปต์",
    ["Server Hop Mode"] = "🌐 โหมดย้ายเซิร์ฟเวอร์",
    ["Most Players"] = "👥 ผู้เล่นมากที่สุด",
    ["Random"] = "🎲 สุ่ม",
    ["Least Players"] = "👤 ผู้เล่นน้อยที่สุด",
    ["Server Hop"] = "🌐 ย้ายเซิร์ฟเวอร์",
    ["Job ID"] = "🆔 รหัสเซิร์ฟเวอร์ (Job ID)",
    ["Paste a server Job ID..."] = "วางรหัสเซิร์ฟเวอร์ที่นี่...",
    ["Join Job ID"] = "🚪 เข้าเซิร์ฟตาม Job ID",
    ["Copy Current Job ID"] = "📋 คัดลอก Job ID ปัจจุบัน",
    ["Rejoin Server"] = "🔄 เข้าเซิร์ฟเดิม",
    ["Auto Rejoin When Disconnect"] = "🔄 เข้าใหม่อัตโนมัติเมื่อหลุด",

    -- 🚀 หมวด PERFORMANCE
    ["PERFORMANCE"] = "🚀 ประสิทธิภาพ",
    ["FPS Cap"] = "🎮 จำกัด FPS",
    ["Optimizer"] = "⚡ เพิ่มประสิทธิภาพ",
    ["Strip shadows, textures and effects for the highest FPS"] = "ลดเงา พื้นผิว และเอฟเฟกต์เพื่อเพิ่ม FPS ให้สูงขึ้น",
    ["Disable 3D Render"] = "🚫 ปิดการเรนเดอร์ 3D",

    -- 🛠️ หมวด UTILITY
    ["UTILITY"] = "🛠️ เครื่องมือ",
    ["Anti AFK"] = "💤 กันหลุด (Anti AFK)",

    -- ⚙️ หมวด SETTINGS
    ["SETTINGS"] = "⚙️ ตั้งค่า",
    ["Discord"] = "💬 ดิสคอร์ด",
    ["Copy Discord Link"] = "📋 คัดลอกลิงก์ Discord",
    ["Theme"] = "🎨 ธีม",
    ["Blue Black"] = "🔵 ฟ้าน้ำเงิน",
    ["UI Size"] = "📏 ขนาด UI",
    ["Info"] = "ℹ️ ข้อมูล",
    ["Theme changes accent. UI Size scales the whole window."] = "ธีมเปลี่ยนสีพื้นหลัง. ขนาด UI ปรับขนาดหน้าต่างทั้งหมด",

    -- 🏆 ระดับความหายาก
    ["Divine"] = "✨ ศักดิ์สิทธิ์",
    ["Eternal"] = "♾️ นิรันดร์",
    ["Secret"] = "🔮 ลับ",
    ["Cosmic"] = "🌌 คอสมิก",
    ["Mythic"] = "🔴 มิธิค",
    ["Legendary"] = "🟠 ตำนาน",
    ["Epic"] = "🟣 อีปิค",
    ["Rare"] = "🔵 แรร์",
    ["Uncommon"] = "🟢 ไม่ธรรมดา",
    ["Common"] = "⚪ ธรรมดา",

    -- 🦖 ชื่อสัตว์/ไข่
    ["Gargoyle"] = "🗿 การ์กอยล์",
    ["Pure Jellyfish"] = "🪼 แมงกะพรุนบริสุทธิ์",
    ["Sharkodile"] = "🦈 ฉลามจระเข้",
    ["Rhinobear"] = "🦏 แรดหมี",
    ["Octophant"] = "🐙 ปลาหมึกช้าง",
    ["Nuclear Mantis"] = "☢️ ตั๊กแตนนิวเคลียร์",
    ["Dreadstinger"] = "🦂 แมงป่องสะพรึง",
    ["Swordfish"] = "🐟 ปลากระโทง",
    ["Shark"] = "🦈 ฉลาม",
    ["Ankylosaurus"] = "🦕 แองคิโลซอรัส",

    -- 🔮 หมวด Predictor
    ["Egg Predictor"] = "🔮 คาดการณ์ไข่",
    ["Fuse Predictor"] = "🔮 คาดการณ์การผสม",
    ["Machine is empty"] = "⚙️ เครื่องว่างเปล่า",
    ["Load 3 of the same species to see the result odds"] = "ใส่สัตว์ชนิดเดียวกัน 3 ตัวเพื่อดูโอกาสผลลัพธ์",
    ["Scramble Predictor"] = "🧪 คาดการณ์ Scramble",
    ["[ACTIVE]"] = "🟢 [กำลังทำงาน]",
    ["Banner chance"] = "🎟️ โอกาสออกแบนเนอร์",
    ["Free rerolls"] = "🎲 สุ่มฟรี",
    ["CURRENT RECIPE"] = "📜 สูตรปัจจุบัน",
    ["REWARD ODDS"] = "🎁 โอกาสได้รับรางวัล",
    ["NEXT TIME EACH BANNER OPENS"] = "⏰ เวลาเปิดแบนเนอร์ครั้งถัดไป",
    ["UPCOMING BANNERS"] = "🔜 แบนเนอร์ที่กำลังจะมาถึง",
    ["Open now"] = "🟢 เปิดอยู่ตอนนี้",
    ["chance"] = "โอกาส",
    ["in"] = "ในอีก",
    ["Chase pet"] = "🏃 สัตว์ที่ต้องวิ่งตาม",
    ["Sort By"] = "↕️ เรียงตาม",
    ["Value"] = "💰 มูลค่า",
    ["Time Left"] = "⏳ เวลาที่เหลือ",
    ["Scale"] = "📏 ขนาด",
    ["Rarity"] = "💎 ความหายาก",

    -- 🥚 หมวดไข่/ฟัก
    ["eggs"] = "🥚 ไข่",
    ["ready"] = "✅ พร้อม",
    ["growing"] = "🌱 กำลังโต",
    ["in bag"] = "🎒 ในกระเป๋า",
    ["Total"] = "📊 รวม",
    ["IN INVENTORY"] = "🎒 ในกระเป๋า",
    ["In inventory"] = "🎒 ในกระเป๋า",
    ["Search by pet name, mutation, status..."] = "ค้นหาด้วยชื่อสัตว์, การกลายพันธุ์, สถานะ...",
    ["Tap an egg below to preview it"] = "แตะที่ไข่ด้านล่างเพื่อดูตัวอย่าง",

    -- 🧬 หมวด Mutation Items
    ["Mutation Items"] = "🧬 ไอเท็มการกลายพันธุ์",
    ["Shards"] = "💎 เศษผลึก (Shards)",
    ["Scrambled"] = "🧪 Scrambled",
    ["Enchanted"] = "✨ Enchanted",
    ["Auto Mutate Egg"] = "🧬 ออโต้ใช้ไอเท็มกลายพันธุ์",

    -- 📁 หมวด Config
    ["Configuration"] = "📁 การตั้งค่า (Config)",
    ["Config name"] = "📝 ชื่อคอนฟิก",
    ["Create config"] = "➕ สร้างคอนฟิก",
    ["Config list"] = "📋 รายการคอนฟิก",
    ["Load config"] = "📂 โหลดคอนฟิก",
    ["Overwrite config"] = "💾 เขียนทับคอนฟิก",
    ["Delete config"] = "🗑️ ลบคอนฟิก",
    ["Refresh list"] = "🔄 รีเฟรชรายการ",
    ["Set as autoload"] = "🚀 ตั้งเป็นออโต้โหลด",
    ["Reset autoload"] = "🔄 รีเซ็ตออโต้โหลด",
    ["Current autoload config: none"] = "คอนฟิกออโต้โหลดปัจจุบัน: ไม่มี",

    -- 🧪 หมวด Scramble Lab
    ["Scramble Lab Automation"] = "🧪 ระบบอัตโนมัติ Scramble Lab",
    ["Auto Steal Required Eggs"] = "🥚 ออโต้ขโมยไข่ที่ต้องการ",
    ["Stop After Requirement Met"] = "🛑 หยุดเมื่อครบเงื่อนไข",
    ["Auto Place Lab Egg"] = "🥚 ออโต้วางไข่ Lab",
    ["Auto Hatch Lab Egg"] = "🥚 ออโต้ฟักไข่ Lab",
    ["Auto Sacrifice Eggs"] = "🔪 ออโต้สังเวยไข่",
    ["Egg Banner"] = "🎟️ แบนเนอร์ไข่",
    ["Scramble Lab"] = "🧪 Scramble Lab",
    ["Banner:"] = "🎟️ แบนเนอร์:",
    ["Rotates in:"] = "🔄 รีเฟรชใน:",
    ["Pity:"] = "🎯 การันตี:",
    ["Status:"] = "📋 สถานะ:",
    ["Eggs Ready"] = "🥚 ไข่พร้อม",
    ["Missing"] = "❌ ที่ขาด",
    ["Open Lab Window"] = "🪟 เปิดหน้าต่าง Lab",
    ["Teleport to Scramble Lab"] = "🚀 วาร์ปไป Scramble Lab",
    ["Biohazard Pets"] = "☣️ สัตว์ Biohazard",
    ["Experimental Pets"] = "🧪 สัตว์ทดลอง",
    ["Unstable DNA"] = "🧬 DNA ไม่เสถียร",

    -- 👹 หมวด Dr. Scramble Boss
    ["Dr. Scramble Boss"] = "👹 บอส Dr. Scramble",
    ["Auto Enter Boss"] = "🚪 ออโต้เข้าบอส",
    ["Fast Swing (Tool Swap)"] = "⚡ ตีเร็ว (สลับอาวุธ)",
    ["Boss: Next in"] = "👹 บอส: ครั้งถัดไปใน",
    ["Auto Buy Shop"] = "🛒 ออโต้ซื้อของร้าน",
    ["Shop Items"] = "📦 ไอเท็มร้านค้า",
    ["Scrambled Mutation"] = "🧬 การกลายพันธุ์ Scrambled",
    ["2x Cash Booster"] = "💰 บูสต์เงิน x2",
    ["1.25x Speed"] = "💨 บูสต์ความเร็ว x1.25",
    ["2x Treadmill Booster"] = "🏃 บูสต์ลู่วิ่ง x2",
}

-- ==========================================
-- 🔡 2. LOWERCASE DICTIONARY
-- ==========================================

local lowerDict = {}
for key, value in pairs(dict) do
    lowerDict[string.lower(key)] = value
end

-- ==========================================
-- 🔄 3. DYNAMIC TEXT
-- ==========================================

local function translateDynamicText(txt)
    local newTxt = txt
    newTxt = newTxt:gsub("^Speed: (%d+)", "💨 ความเร็ว: %1")
    newTxt = newTxt:gsub("^Instant Steal Steps: (%d+)", "⚡ ขั้นตอนขโมยทันที: %1")
    newTxt = newTxt:gsub("(%d+) pets", "%1 ตัว")
    newTxt = newTxt:gsub("(%d+) selected", "เลือกแล้ว %1")
    newTxt = newTxt:gsub("(%d+) eggs", "%1 ไข่")
    newTxt = newTxt:gsub("(%d+) ready", "พร้อม %1")
    newTxt = newTxt:gsub("(%d+) growing", "กำลังโต %1")
    newTxt = newTxt:gsub("(%d+) in bag", "ในกระเป๋า %1")
    newTxt = newTxt:gsub("in (%d+)m", "ในอีก %1 นาที")
    newTxt = newTxt:gsub("in (%d+)h (%d+)m", "ในอีก %1 ชม. %2 นาที")
    return newTxt
end

-- ==========================================
-- 🌐 4. TRANSLATE OBJECT
-- ==========================================

local function translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end
        local currentText = obj.Text
        local dynamicText = translateDynamicText(currentText)
        if dynamicText ~= currentText then
            obj.Text = dynamicText
            currentText = dynamicText
        end
        local cleanText = currentText:gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
        if cleanText then
            local translated = lowerDict[string.lower(cleanText)]
            if translated then
                obj.Text = translated
            end
        end
        if obj:IsA("TextBox") then
            local placeholder = obj.PlaceholderText or ""
            local cleanPlaceholder = placeholder:gsub("<[^>]+>", ""):match("^%s*(.-)%s*$")
            if cleanPlaceholder then
                local translatedPlaceholder = lowerDict[string.lower(cleanPlaceholder)]
                if translatedPlaceholder then
                    obj.PlaceholderText = translatedPlaceholder
                end
            end
        end
    end)
end

-- ==========================================
-- 🪝 5. HOOK OBJECT
-- ==========================================

local function hookObject(obj)
    translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then
            return
        end
        if obj:GetAttribute("Hooked_SourcesHub") then
            return
        end
        obj:SetAttribute("Hooked_SourcesHub", true)
        obj:GetPropertyChangedSignal("Text"):Connect(function()
            translateText(obj)
        end)
        if obj:IsA("TextBox") then
            obj:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
                translateText(obj)
            end)
        end
    end)
end

-- ==========================================
-- 🔍 6. SCAN & HOOK UI
-- ==========================================

for _, obj in ipairs(GuiService:GetDescendants()) do
    hookObject(obj)
end

GuiService.DescendantAdded:Connect(function(obj)
    task.wait(0.05)
    hookObject(obj)
end)

-- ==========================================
-- 🔔 7. NOTIFICATION
-- ==========================================

pcall(function()
    StarterGui:SetCore("SendNotification", {
        Title = "🟢 SourcesHub : รอโหลด 15-20 วิ",
        Text = "แปลไทยโดย : บาฟัค",
        Duration = 5
    })
end)

-- ==========================================
-- 🚀 8. LOAD SOURCESHUB
-- ==========================================

local success, err = pcall(function()
    loadstring(game:HttpGet("https://gist.githubusercontent.com/sourceshubs/9c70c7c483019f2de5d7119ae05ba3f8/raw/SourcesHubStealAnEgg"))()
end)

if not success then
    warn("❌ SourcesHub โหลดไม่สำเร็จ:")
    warn(err)
else
    print("✅ SourcesHub โหลดสำเร็จ")
    print("แปลไทยโดย : บาฟัค")
end