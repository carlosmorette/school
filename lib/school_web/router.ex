defmodule SchoolWeb.Router do
  use SchoolWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: SchoolWeb.Schema

    forward "/", Absinthe.Plug, schema: SchoolWeb.Schema
  end
end
