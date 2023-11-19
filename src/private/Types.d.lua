--[[

]]
export type SupabaseClient = {
	connection: SupabaseClientConnection,
	from: (self: SupabaseClient, name: string) -> SupabaseClientConnection,
}

--[[

]]
export type SupabaseClientSettings = {
	url: string,
	apiKey: string,
}

--[[

]]
export type SupabaseDatabase = {
	db: {
		url: string,
		apiKey: string,
	},
}

--[[

]]
export type SupabaseClientConnection = {
	-- CRUD
	select: (self: SupabaseClientConnection, query: string) -> SupabaseClientConnection,
	insert: (self: SupabaseClientConnection, value: { string: any }) -> SupabaseClientConnection,
	update: (
		self: SupabaseClientConnection,
		column: string,
		value: any,
		record: { string: any }
	) -> SupabaseClientConnection,
	delete: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection,

	-- Logical
	eq: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection,
	neq: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection,

	-- Modifiers
	order: (self: SupabaseClientConnection, column: string, asc: boolean) -> SupabaseClientConnection,
	limit: (self: SupabaseClientConnection, amount: number) -> SupabaseClientConnection,

	-- Filters

	execute: (self: SupabaseClientConnection) -> any,
}

return {}
