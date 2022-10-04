//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\
//\\--▒█▀▀█ ▀█▀ ▒█▄░▒█ ▒█▀▀▀ ▒█▀▀█ ░░ ▒█▀▀▄ ▒█▀▀▀ ▒█░░▒█ ░ ▒█▀▀▀ ▒█░▒█--//\\
//\\--▒█░░░ ▒█░ ▒█▒█▒█ ▒█▀▀▀ ▒█░▒█ ▀▀ ▒█░▒█ ▒█▀▀▀ ░▒█▒█░ ▄ ▒█▀▀▀ ▒█░▒█--//\\
//\\--▒█▄▄█ ▄█▄ ▒█░░▀█ ▒█▄▄▄ ░▀▀█▄ ░░ ▒█▄▄▀ ▒█▄▄▄ ░░▀▄▀░ █ ▒█▄▄▄ ░▀▄▄▀--//\\
//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\//\\

function Notify(type, title, message, time, position)
	SendNUIMessage({
		action = 'notification',
		type = type,
        title = title,
        message = message,
        time = time,
		position = position
	})
end

RegisterNetEvent('cineqdeveu:notify')
AddEventHandler('cineqdeveu:notify', function(type, title, message, time, position)
	Notify(type, title, message, time, position)
end)

RegisterCommand("notify", function()
	Notify("info", "Informacja", "Testowa Notyfikacja Informacyjna", 5000, "right")
end)


-- EXPORTY

--[[
	exports['cde-notify']:Notify("system", "System", "Testowa Notyfikacja Systemowa", 5000, "right")
	exports['cde-notify']:Notify("info", "Informacja", "Testowa Notyfikacja Informacyjna", 5000, "left")
	exports['cde-notify']:Notify("success", "Sukces", "Testowa Notyfikacja Sukcesowa", 5000, "right")
	exports['cde-notify']:Notify("error", "Błąd", "Testowa Notyfikacja Błędowa", 5000, "left")
	exports['cde-notify']:Notify("warning", "Ostrzeżenie", "Testowa Notyfikacja Ostrzeżenia", 5000, "right")
	exports['cde-notify']:Notify("sms", "SMS", "Testowa Notyfikacja SMS", 5000, "left")
]]