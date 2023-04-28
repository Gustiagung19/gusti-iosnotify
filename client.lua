RegisterNetEvent('gusti-iosnotify:show')
AddEventHandler('gusti-iosnotify:show', function(data)
	SendAlert(icon, appname, title, message, time, sound)
	local icon = data.icon
	local appname = data.appname
	local title = data.title
	local message = data.message
	local time = data.time
	local sound = data.sound

    SendNUIMessage({
        action = 'open',
        icon = icon,
        appname = appname,
        title = title,
        message = message,
        time = time,
        sound = sound
    })
end)

function SendAlert(icon, appname, title, message, time, sound)
    if sound == nil then
		sound = 'default'
	end

	SendNUIMessage({
		action  = 'open',
		icon    = icon,
		appname = appname,
		title   = title,
		message = message,
		time    = time,
		sound   = sound
	})
end