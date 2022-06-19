local Hop = function()
  local IDs = {}
	local api = "https://games.roblox.com/v1/games/PlaceId/servers/Public?sortOrder=Asc&limit=100"

	for _, v in next, HttpService:JSONDecode(game:HttpGetAsync(api:gsub('PlaceId', game.PlaceId))).data do
		table.insert(IDs, v.id)
	end

	game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, IDs[math.random(1, #IDs)])
end

return Hop
