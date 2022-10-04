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
