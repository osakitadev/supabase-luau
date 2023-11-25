# Types

Here will be all types of supabase-luau

---

> ## SupabaseClient

Represents a Supabase Client

```typescript linenums="1"
export type SupabaseClient = {
  connection: SupabaseClientConnection,
  from: (self: SupabaseClient, name: string) -> SupabaseClientConnection,
}
```

### Properties

- `connection: SupabaseClientConnection`: Represents a connection to the database
- `from: (self: SupabaseClient, name: string) -> SupabaseClientConnection`: Represents the method by which you connect to the database.

---

> ## SupabaseClientSettings

Represents the necessary configuration for a Supabase Client

```typescript linenums="1"
export type SupabaseClientSettings = {
  url: string,
  apiKey: string,
}
```

### Properties

- `url: string`: url of the project
- `apiKey: string`: api-key of the project

---

> ## SupabaseClientDatabase

Represents a database

```typescript linenums="1"
export type SupabaseDatabase = {
  db: {
    url: string,
    apiKey: string,
  },
}
```

### Properties

- `url: string`: url of the project
- `apiKey: string`: api-key of the project

---

> ## SupabaseClientConnection

Represents a connection to a database along with all allowed methods

```typescript linenums="1"
export type SupabaseClientConnection = {
  select: (self: SupabaseClientConnection, query: string) -> SupabaseClientConnection,
  insert: (self: SupabaseClientConnection, value: { string: any }) -> SupabaseClientConnection,
  update: (
    self: SupabaseClientConnection,
    column: string,
    value: any,
    record: { string: any }
  ) -> SupabaseClientConnection,
  delete: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection,

  eq: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection,
  neq: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection,

  order: (self: SupabaseClientConnection, column: string, asc: boolean) -> SupabaseClientConnection,
  limit: (self: SupabaseClientConnection, amount: number) -> SupabaseClientConnection,

  execute: (self: SupabaseClientConnection) -> any,
}
```

### Properties

- `select: (self: SupabaseClientConnection, query: string) -> - SupabaseClientConnection`: Represents a database operation
- `insert: (self: SupabaseClientConnection, value: { string: any }) -> - SupabaseClientConnection`: Represents a database operation
- `update: ( self: SupabaseClientConnection, column: string, value: any, record: { string: any } ) -> SupabaseClientConnection`: Represents a database operation
- `delete: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection`: Represents a database operation
- `eq: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection`: Represents a database operation
- `neq: (self: SupabaseClientConnection, column: string, value: any) -> SupabaseClientConnection`: Represents a database operation
- `order: (self: SupabaseClientConnection, column: string, asc: boolean) -> SupabaseClientConnection`: Represents a database operation
- `limit: (self: SupabaseClientConnection, amount: number) -> SupabaseClientConnection`: Represents a database operation
- `execute: (self: SupabaseClientConnection) -> any`: Represents a database operation

---
