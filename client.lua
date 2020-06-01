RegisterNetEvent( 'yt:ystream' )
AddEventHandler( 'yt:ystream', function()
    drawNotification("~w~(~g~SUCCESS ~w~- ~b~Server Notified~w~)")
end)

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(true, false)
end

RegisterNetEvent( 'yt:nstream' )
AddEventHandler( 'yt:nstream', function()
    drawNotification("~w~(~g~SUCCESS ~w~- ~b~Server Notified~w~)")
end)
