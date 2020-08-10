local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
--local Proxy = module("vrp", "lib/Debug")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","OxyAc")
MySQL = module("vrp_mysql", "MySQL")
MySQL.createCommand("vRP/BanOn", "UPDATE vrp_users SET banned='1' WHERE id = @id")

local logs = "https://discordapp.com/api/webhooks/742127798566781089/p9h3UaVFSZ2ZFufzTksWBVrch-dZKGgZBvgqEoIe45MKZMtT0ctdP0rokrLt7nuEItvW"
local BotName = "OxyAc"
local Logo = "https://s.clipartkey.com/mpngs/s/167-1676404_element-clipart-oxygen-thought-bubble.png" 

RegisterServerEvent("BanPlayerJump")
AddEventHandler("BanPlayerJump", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
    
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
	if vRP.hasPermission({user_id,"admin.spawnveh"}) then
		print(user_id.."  Hackerman alert mega jump")
	else
		print("["..user_id.. "] Nice one hackerman")
		TriggerClientEvent('chatMessage', -1, '^3 OxyAc', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A fost banat de catre OxyAc")
		DropPlayer(source, "Ai fost banat pentru mega jump daca crezi ca ai fost banat pe nedrept intra aici(https://discord.gg/HPr28K4) si dai un mesaj unui membru staff!")
		MySQL.query("vRP/BanOn", {id = user_id})
		local Banned = {
			{
				["color"] = "5000",
				["title"] = "Hacker identificat id: "..user_id,
				["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n**"..discord.."\n Pentru mega jump!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Banned}), { ['Content-Type'] = 'application/json' })
	end
end)

RegisterServerEvent("BanPlayerSpeedH")
AddEventHandler("BanPlayerSpeedH", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""

	if vRP.hasPermission({user_id,"admin.spawnveh"}) then
		print(user_id.."  Hackerman alert (Speed Hack)")
	else
		print("["..user_id.. "] Nice one hackerman  (Speed Hack)")
		TriggerClientEvent('chatMessage', -1, '^3 OxyAc', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A fost banat de catre OxyAc pentru Speed Hack")
		DropPlayer(source, "Ai fost banat de OxyAc pentru Speed Hack daca crezi ca ai fost banat pe nedrept intra aici(https://discord.gg/HPr28K4) si dai un mesaj unui membru staff!")
		MySQL.query("vRP/BanOn", {id = user_id})
		local Banned = {
			{
				["color"] = "5000",
				["title"] = "Hacker identificat id: "..user_id,
				["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n**"..discord.."\n Speed Hack!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Banned}), { ['Content-Type'] = 'application/json' })
	end

end)



RegisterServerEvent("Noclipban")
AddEventHandler("Noclipban", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""

	if vRP.hasPermission({user_id,"admin.spawnveh"}) then
		print(user_id.."  Hackerman alert (Noclip)")
	else
		print("["..user_id.. "] Nice one hackerman  (Noclip)")
		TriggerClientEvent('chatMessage', -1, '^3 OxyAc', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A fost banat de catre OxyAc pentru Noclip")
		DropPlayer(source, "Ai fost banat de OxyAc pentru Noclip daca crezi ca ai fost banat pe nedrept intra aici(https://discord.gg/HPr28K4) si dai un mesaj unui membru staff!")
		MySQL.query("vRP/BanOn", {id = user_id})
		local Banned = {
			{
				["color"] = "5000",
				["title"] = "Hacker identificat id: "..user_id,
				["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n**"..discord.."\n Noclip!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Banned}), { ['Content-Type'] = 'application/json' })
	end

end)



RegisterServerEvent("BanPlayerINFAMMO")
AddEventHandler("BanPlayerINFAMMO", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""

	if vRP.hasPermission({user_id,"admin.spawnveh"}) then
		print(user_id.."  Hackerman alert  (Ammo infinit)")
	else
		print("["..user_id.. "] Nice one hackerman  (Ammo infinit)")
		TriggerClientEvent('chatMessage', -1, '^3 OxyAc', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A fost banat de catre OxyAc pentru Ammo infinit")
		DropPlayer(source, "Ai fost banat de OxyAc pentru Ammo infinit daca crezi ca ai fost banat pe nedrept intra aici(https://discord.gg/HPr28K4) si dai un mesaj unui membru staff!")
		MySQL.query("vRP/BanOn", {id = user_id})
		local Banned = {
			{
				["color"] = "5000",
				["title"] = "Hacker identificat id: "..user_id,
				["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n**"..discord.."\n Infinite Ammo!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Banned}), { ['Content-Type'] = 'application/json' })
	end

end)


RegisterServerEvent("BanPlayerGODMODE")
AddEventHandler("BanPlayerGODMODE", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""

	if vRP.hasPermission({user_id,"admin.spawnveh"}) then
		print(user_id.."  Hackerman alert (God Mod)")
	else
		print("["..user_id.. "] Nice one hackerman")
		TriggerClientEvent('chatMessage', -1, '^3 OxyAc', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A fost banat de catre OxyAc pentru God Mod")
		DropPlayer(source, "Ai fost banat de OxyAc pentru God Mod daca crezi ca ai fost banat pe nedrept intra aici(https://discord.gg/HPr28K4) si dai un mesaj unui membru staff!")
		MySQL.query("vRP/BanOn", {id = user_id})
		local Banned = {
			{
				["color"] = "5000",
				["title"] = "Hacker identificat id: "..user_id,
				["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n**"..discord.."\n Pentru God mod!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Banned}), { ['Content-Type'] = 'application/json' })
	end

end)










RegisterCommand("cleanup", function(player, args)
	if player == 0 then
		local theSecs = parseInt(args[1]) or 10
		TriggerClientEvent("alex:delAllVehs", -1, theSecs)
	else
		local user_id = vRP.getUserId({player})
		if vRP.hasPermission({user_id, "admin.tickets"}) then
			local sec = parseInt(args[1]) or 10
			if sec >= 0 then
				TriggerClientEvent("alex:delAllVehs", -1, sec)
				TriggerServerEvent("Clear")
			end
		end
	end
end, false)


RegisterServerEvent("WarnPmegajump")
AddEventHandler("WarnPmegajump", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
		local MegajumpWarn = {
			{
				["color"] = "5000",
				["title"] = "Posibil Hacker id: "..user_id,
				["description"] = "Player: **"..name.."**\n **\n**"..discord.."\n Posibil Hacker Super Jump!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = MegajumpWarn}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("WarnPGodmod")
AddEventHandler("WarnPGodmod", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
		local Godmod = {
			{
				["color"] = "5000",
				["title"] = "Posibil Hacker id: "..user_id,
				["description"] = "Player: **"..name.."**\n **\n**"..discord.."\n Posibil Hacker GOD Mod!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Godmod}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("WarnPNoclip")
AddEventHandler("WarnPNoclip", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
		local WarnPNoclip = {
			{
				["color"] = "5000",
				["title"] = "Posibil Hacker id: "..user_id,
				["description"] = "Player: **"..name.."**\n **\n**"..discord.."\n Posibil Hacker Noclip!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = WarnPNoclip}), { ['Content-Type'] = 'application/json' })
end)



RegisterServerEvent("WarnPSpeedHack")
AddEventHandler("WarnPSpeedHack", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
		local SpeedHackWarn = {
			{
				["color"] = "5000",
				["title"] = "Posibil Hacker id: "..user_id,
				["description"] = "Player: **"..name.."**\n **\n**"..discord.."\n Posibil Hacker Speed Hack!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = SpeedHackWarn}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("Clear")
AddEventHandler("Clear", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
		local Warn = {
			{
				["color"] = "5000",
				["title"] = user_id.."A sters toate masinile : ",
				["description"] = "Player: **"..name.."**\n **\n**"..discord.."\n A dat clear la masini!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Warn}), { ['Content-Type'] = 'application/json' })
end)




RegisterServerEvent("WarnP")
AddEventHandler("WarnP", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
		local Warn = {
			{
				["color"] = "5000",
				["title"] = "Posibil Hacker id: "..user_id,
				["description"] = "Player: **"..name.."**\n **\n**"..discord.."\n Posibil Hacker!**",
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
	PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Warn}), { ['Content-Type'] = 'application/json' })
end)
--hackdabani
RegisterServerEvent("BaniInfiniti")
AddEventHandler("BaniInfiniti", function() -- god byee
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local name = GetPlayerName(source)
	local ip = GetPlayerEndpoint(source)
	local ping = GetPlayerPing(source)
	local steamhex = GetPlayerIdentifier(source)
	local discord = ""
	local id = ""
    	local bani = vRP.getMoney({user_id})
	local baniBanca = vRP.getBankMoney({user_id})
	totmaney = math.floor(bani + baniBanca)

	identifiers = GetNumPlayerIdentifiers(source)
	for i = 0, identifiers + 1 do
	    if GetPlayerIdentifier(source, i) ~= nil then
 	       if string.match(GetPlayerIdentifier(source, i), "discord") then
 	           discord = GetPlayerIdentifier(source, i)
 	           id = string.sub(discord, 9, -1)
 	       end
	    end
	end
	if totmaney > 600000 then 
		print("["..user_id.. "] Nice one hackerman")
		--TriggerClientEvent('chatMessage', -1, '^3 OxyAc', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 A fost banat de catre OxyAc")
		--DropPlayer(source, "Ai fost banat pentru mega jump daca crezi ca ai fost banat pe nedrept intra aici(https://discord.gg/HPr28K4) si dai un mesaj unui membru staff!")
		--MySQL.query("vRP/BanOn", {id = user_id})
		local Banned = {
			{
				["color"] = "5000",
				["title"] = "Hacker identificat id: "..user_id,
				["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n**"..discord.."\n Este posibil ca**"..user_id.."** sa aive hack avand balanta de ** "..totmaney,
				["footer"] = {
					["text"] = BotName,
					["icon_url"] = Logo,
				},
			}
		}
		PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "OxyAc", embeds = Banned}), { ['Content-Type'] = 'application/json' })
	end
end)
