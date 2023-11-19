local Query = require(script.Parent.Query)
local Types = require(script.Parent.Parent.private["Types.d"])
local HttpClient = require(script.Parent.HttpClient)

local Table = {}
Table.__index = Table

function Table.new(name: string, db: Types.SupabaseDatabase)
	return setmetatable({
		name = name,
		http = HttpClient.connection(db.apiKey, db.url .. "/rest/v1/" .. name),
		query = Query.new(),
	}, Table)
end

function Table:select(sql: string)
	self.query:parameter("select", sql)
	return self
end

function Table:insert(value: { string: any })
	return self.http:post(value)
end

function Table:update(column: string, value: any, record: { string: any })
	return self.http:patch(record, `{column}=eq.{value}`)
end

function Table:delete(column: string, value: any)
	return self.http:delete("", `{column}=eq.{value}`)
end

function Table:order(column: string, asc: boolean)
	self.query:parameter("order", `{column}.{if asc then "asc" else "desc"}`)
	return self
end

function Table:eq(column: string, value: any)
	self.query:parameter(column, `eq.{value}`)
	return self
end

function Table:neq(column: string, value: any)
	self.query:parameter(column, `neq.{value}`)
	return self
end

function Table:limit(amount: number)
	self.query:parameter("limit", amount)
	return self
end

function Table:execute()
	return self.http:get("", self.query:get())
end

return Table
