defmodule PhoenixDemoWeb.Router do
  use PhoenixDemoWeb, :router
  use Talon.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixDemoWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/posts", PostController
    resources "/comments", CommentController
  end

  # your app's routes
  scope "/admin", PhoenixDemoWeb do
    pipe_through :browser
    talon_routes(PhoenixDemo.Admin)
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixDemoWeb do
  #   pipe_through :api
  # end
end
