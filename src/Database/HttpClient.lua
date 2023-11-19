local HttpService = game:GetService("HttpService")

local HttpClient = {}
HttpClient.__index = HttpClient

function HttpClient.connection(apiKey: string, apiUrl: string)
	return setmetatable({
		key = apiKey,
		url = apiUrl,
		auth = {
			["apikey"] = apiKey,
			["Authorization"] = "Bearer " .. apiKey,
			["Prefer"] = "return=representation",
			["Content-Type"] = "application/json",
		},
	}, HttpClient)
end

function HttpClient:__genericRequest(body: any, method: string, queryParams: string)
	queryParams = queryParams or ""
	body = body or {}

	local authHeaders = self.auth
	local requestConfig = {
		Url = self.url .. "?" .. queryParams,
		Headers = authHeaders,
		Method = method,
		Body = HttpService:JSONEncode(body),
	}

	if method == "GET" then
		authHeaders["Content-Type"] = nil
		requestConfig["Body"] = nil
	end

	return HttpService:JSONDecode(HttpService:RequestAsync(requestConfig).Body)
end

function HttpClient:delete(body: any, queryParams)
	return self:__genericRequest(body, "DELETE", queryParams)
end

function HttpClient:post(body: any, queryParams: string)
	return self:__genericRequest(body, "POST", queryParams)
end

function HttpClient:patch(body: any, queryParams: string)
	return self:__genericRequest(body, "PATCH", queryParams)
end

function HttpClient:get(body: any, queryParams: string)
	return self:__genericRequest(body, "GET", queryParams)
end

return HttpClient
