local Query = {}
Query.__index = Query

function Query.new()
	local self = setmetatable({
		queryString = "",
	}, Query)
	return self
end

function Query:parameter(name: string, value: string)
	self.queryString ..= name .. "=" .. value .. "&"
end

function Query:get()
	return self.queryString
end

return Query
