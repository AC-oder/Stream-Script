AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/stream" then
	TriggerClientEvent("yt:ystream", source)
    TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^8===============^3(STREAMING IN PROGRESS)^8===============')
	TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^8^7' .. GetPlayerName(source) .. '^3^7 is now ^2((STREAMING))')
	TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^8-> ^7Stream Sniping is a automatic kick from the server ^8<-')
	TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^8====================================================')
	CancelEvent()
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/stopstream" then
	TriggerClientEvent("yt:nstream", source)
    TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^8=================^3(STREAM ENDED)^8===================')
	TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^7' .. GetPlayerName(source) .. ' has now stopped ^2((STREAMING))')
	TriggerClientEvent('chatMessage', -1, '', { 255, 255, 255 }, '^8==================================================')
	CancelEvent()
    end
end)
