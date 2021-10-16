 local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()		npcHandler:onThink()		end

local voices = {
	{ text = 'Imbuiment items' },
}

npcHandler:addModule(VoiceModule:new(voices))

local function creatureSayCallback(cid, type, msg)
	if not npcHandler:isFocused(cid) then
		return false
	end

	local player = Player(cid)
	if msgcontains(msg, "strike") then
		npcHandler:say("Do you want to buy items for critical imbuiment?", cid)
		npcHandler.topic[cid] = 1
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 1 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(12400, 20) --Protective Charms.
			player:addItem(11228, 25) --Sabretooth
			player:addItem(25384, 5) --Vexclaw Talons.
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "vampirism") then
		npcHandler:say("Do you want to buy items for life leech imbuiment?", cid)
		npcHandler.topic[cid] = 2
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 2 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10602, 25) --Vampire Teeth
			player:addItem(10550, 15) --Bloody Pincers
			player:addItem(10580, 5) --Piece of Dead Brain
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "void") then
		npcHandler:say("Do you want to buy items for mana leech imbuiment?", cid)
		npcHandler.topic[cid] = 3
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 3 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(12448, 25) --Rope Belts
			player:addItem(22534, 25) --Silencer Claws
			player:addItem(25386, 5) --Some Grimeleech Wings
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
		
	if msgcontains(msg, "bash") then
		npcHandler:say("Do you want to buy items for skill club imbuiment?", cid)
		npcHandler.topic[cid] = 4
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 4 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10574, 25) --Cyclops Toe
			player:addItem(24845, 15) --Ogre Nose Rings
			player:addItem(11322, 10) --Warmaster's Wristguards
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "blockade") then
		npcHandler:say("Do you want to buy items for skill shield imbuiment?", cid)
		npcHandler.topic[cid] = 5
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 5 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10558, 20) --Piece of Scarab Shell
			player:addItem(12659, 25) --Brimstone Shells
			player:addItem(22533, 25) --Frazzle Skins
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
			
	if msgcontains(msg, "chop") then
		npcHandler:say("Do you want to buy items for skill axe imbuiment?", cid)
		npcHandler.topic[cid] = 6
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 6 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(11113, 20) --Orc Tooth
			player:addItem(12403, 25) --Battle Stones
			player:addItem(23571, 20) --Moohtant Horns
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end		
	
	if msgcontains(msg, "epiphany") then
		npcHandler:say("Do you want to buy items for magic level imbuiment?", cid)
		npcHandler.topic[cid] = 7
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 7 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10552, 25) --elvish talisman.
			player:addItem(12408, 15) --broken shamanic staff
			player:addItem(11226, 15) --strand of medusa hair.
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "precision") then
		npcHandler:say("Do you want to buy items for skill distance imbuiment?", cid)
		npcHandler.topic[cid] = 8
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 8 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(12420, 25) --Elven Scouting Glasses
			player:addItem(21311, 20) --Elven Hoofs
			player:addItem(11215, 10) --Metal Spikes
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "slash") then
		npcHandler:say("Do you want to buy items for skill sword imbuiment?", cid)
		npcHandler.topic[cid] = 9
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 9 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10608, 25) --Lion's Mane
			player:addItem(23573, 25) --Mooh'tah Shells
			player:addItem(10571, 5) --War Crystals
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "featherweight") then
		npcHandler:say("Do you want to buy items for capacity increase imbuiment?", cid)
		npcHandler.topic[cid] = 10
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 10 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(28999, 20) --Fairy Wings
			player:addItem(29007, 10) --Little Bowl of Myrrhs
			player:addItem(22539, 5) --Goosebump Leather
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "swiftness") then
		npcHandler:say("Do you want to buy items for speed imbuiment?", cid)
		npcHandler.topic[cid] = 11
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 11 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(19738, 15) --Damselfly Wings
			player:addItem(11219, 25) --Compasses
			player:addItem(15484, 20) --Waspoid Wings
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "vibrancy") then
		npcHandler:say("Do you want to buy items for paralysis removal imbuiment?", cid)
		npcHandler.topic[cid] = 12
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 12 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(24709, 20) --Wereboar Hooves
			player:addItem(26163, 15) --Crystallized Angers
			player:addItem(33089, 5) --Quills
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "electrify") then
		npcHandler:say("Do you want to buy items for energy damage imbuiment?", cid)
		npcHandler.topic[cid] = 13
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 13 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(21310, 25) --Rorc Feathers
			player:addItem(24631, 5) --Peacock Feather Fans
			player:addItem(26164, 1) --Energy Vein
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "frost") then
		npcHandler:say("Do you want to buy items for frost damage imbuiment?", cid)
		npcHandler.topic[cid] = 14
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 14 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10578, 25) -- Frosty Hearts
			player:addItem(24170, 10) --Seacrest Hairs
			player:addItem(10567, 5) --Polar Bear Paws
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "reap") then
		npcHandler:say("Do you want to buy items for death damage imbuiment?", cid)
		npcHandler.topic[cid] = 15
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 15 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(12440, 25) -- Pile of Grave Earth
			player:addItem(10564, 20) --Demonic Skeletal Hands
			player:addItem(11337, 5) --Petrified Screams
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "scorch") then
		npcHandler:say("Do you want to buy items for fire damage imbuiment?", cid)
		npcHandler.topic[cid] = 16
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 16 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10553, 25) -- Fiery Hearts
			player:addItem(5920, 5) --Green Dragon Scales
			player:addItem(5954, 5) --Demon Horns
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "venom") then
		npcHandler:say("Do you want to buy items for earth damage imbuiment?", cid)
		npcHandler.topic[cid] = 17
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 17 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10603, 25) -- Swamp Grasses
			player:addItem(10557, 20) -- Poisonous Slimes
			player:addItem(23565, 2) -- Slime Hearts
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "cloud fabric") then
		npcHandler:say("Do you want to buy items for energy protection imbuiment?", cid)
		npcHandler.topic[cid] = 18
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 18 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10561, 20) -- Wyvern Talismans
			player:addItem(15482, 15) -- Crawler Head Platings
			player:addItem(10582, 10) -- Wyrm Scales
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "demon presence") then
		npcHandler:say("Do you want to buy items for holy protection imbuiment?", cid)
		npcHandler.topic[cid] = 19
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 19 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(10556, 25) -- Cultish Robes
			player:addItem(10555, 25) -- Cultish Masks
			player:addItem(11221, 20) -- Hellspawn Tails
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "dragon hide") then
		npcHandler:say("Do you want to buy items for fire protection imbuiment?", cid)
		npcHandler.topic[cid] = 20
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 20 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(5877, 20) -- Green Dragon Leathers
			player:addItem(18425, 10) -- Blazing Bones
			player:addItem(12614, 5) --  Draken Sulphurs
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	

	if msgcontains(msg, "lich shroud") then
		npcHandler:say("Do you want to buy items for death protection imbuiment?", cid)
		npcHandler.topic[cid] = 21
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 21 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(12422, 25) -- Flask of Embalming Fluid
			player:addItem(24663, 20) -- Gloom Wolf Furs
			player:addItem(10577, 5) --  Mystical Hourglasses
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "quara scale") then
		npcHandler:say("Do you want to buy items for ice protection imbuiment?", cid)
		npcHandler.topic[cid] = 22
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 22 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(11212, 25) -- Winter Wolf Furs
			player:addItem(11224, 15) -- Thick Furs
			player:addItem(15425, 5) --  Deepling Warts
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	
	
	if msgcontains(msg, "snake skin") then
		npcHandler:say("Do you want to buy items for earth protection imbuiment?", cid)
		npcHandler.topic[cid] = 23
	elseif msgcontains(msg, "yes") and npcHandler.topic[cid] == 23 then
		if player:removeItem(2160,100) then
			npcHandler:say("whoooosh There!", cid)
			player:addItem(20103, 25) --  Piece of Swampling Wood
			player:addItem(10611, 20) -- Snake Skins
			player:addItem(12658, 10) --  Brimstone Fangss
		else
			npcHandler:say("There is no money with you.", cid)
		end
		npcHandler.topic[cid] = 0
	end	


	return true
end

keywordHandler:addKeyword({'trade'}, StdModule.say, {npcHandler = npcHandler, text = 'Do you want to buy pack for {1kk}, for Skill increase {Bash}, {Blockade}, {Chop}, {Epiphany}, {Precision}, {Slash}. Additional Attributes {Featherweight}, {Strike}, {Swiftness}, {Vampirism}, {Vibrancy}, {Void}. Elemental Damage {Electrify}, {Frost}, {Reap}, {Scorch}, {Venom}. Elemental Protection {Cloud Fabric}, {Demon Presence}, {Dragon Hide}, {Lich Shroud}, {Quara Scale}, {Snake Skin}. ?'})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME| say {trade} to buy imbuiment items.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye |PLAYERNAME|.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye |PLAYERNAME|.")
npcHandler:addModule(FocusModule:new())