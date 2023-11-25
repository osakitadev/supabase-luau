# About supabase-luau

You may have wondered why you should use supabase for your projects and games, and why choose this specific module.

Next I will tell you about the history of this module, why to use it, and some code examples.

---

## supabase-luau creation history

[supabase-luau](https://github.com/ecstatic5/supabase-luau) was mainly thought to use it privately myself, I was developing a game in which I needed to list items from a [DataStore](https://create.roblox.com/docs/es-es/cloud-services/datastores), but I still needed to store a table with all the necessary, but the problem is that the [OrderedDataStore](https://create.roblox.com/docs/es-es/reference/engine/classes/OrderedDataStore) does not allow to store items other than numbers, so the option I used, was to create **2 DataStores**, one which stores an ID that refers to the table of the other DataStore that I want to retrieve.

The problem with this system I made, is that it was too slow and the code was not scalable, so I remembered that [Supabase](https://supabase.com/) had a REST-API which I used to make this easier, once I had finished programming the module, I put it approved. By using it I didn't need to use the system I did before, and my game code went from +500 lines of code to just 1.

## Why should you use it?

This module gives you the ease and benefit of creating relational databases (**SQL and Postgresql**). It also allows you to filter or modify how the elements of this database are obtained, and you can modify and visualize the records that you have in your database.

### Benefits that supabase-luau gives you

- Graphical interface to visualize your records
- Simple syntax
- Ease of creating more powerful and secure databases
- Being able to manage your records manually through a graphical interface
- Ease of use
- You don’t need to know much SQL to be able to use it.
