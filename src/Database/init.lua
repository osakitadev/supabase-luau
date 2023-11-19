local Table = require(script.Table)

local Database = {}
Database.__index = Database

function Database.connection(url, apiKey)
	return setmetatable({
		db = {
			url = url,
			apiKey = apiKey,
		},
	}, Database)
end

function Database:from(name: string)
	return Table.new(name, self.db)
end

return Database
