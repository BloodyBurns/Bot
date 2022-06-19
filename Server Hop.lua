local Hop = function()
  local IDs = {}
	local api = "https://games.roblox.com/v1/games/PlaceId/servers/Public?sortOrder=Asc&limit=100"

	for _, v in next, game:GetService('HttpService'):JSONDecode(game:HttpGetAsync(api:gsub('PlaceId', game.PlaceId))).data do
		table.insert(IDs, v.id)
	end

	repeat game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, IDs[math.random(1, #IDs)]) wait() until not game
end

return Hop
