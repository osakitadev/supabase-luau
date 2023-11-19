local Database = require(script.Database)
local Types = require(script.private["Types.d"])

local Supabase = {}
Supabase.__index = Supabase

function Supabase.createClient(settings: Types.SupabaseClientSettings): Types.SupabaseClient
	return setmetatable({
		connection = Database.connection(settings.url, settings.apiKey),
	}, Supabase)
end

function Supabase:from(name: string): Types.SupabaseClientConnection
	return self.connection:from(name)
end

return Supabase
