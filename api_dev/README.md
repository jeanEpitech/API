# ApiDev

To start your Phoenix server:
  
  * Create phonix project with `mix phx.new XXX –app YYY –module Todolist –no-html –no-webpack`
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Compile project with `mix deps.compile`
  * Test connection with `mix deps.compile connection`
  * Instanciate connection with database `mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`
  * Generate schema with `mix phx.gen.schema Workingtimes workingtimes start: date end:date user_id:references:users`
  * Migrate schema with `mix ecto.migrate`
  * Generate controllers, views and contexts with `mix phx.gen.json User users username: string email: string`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
