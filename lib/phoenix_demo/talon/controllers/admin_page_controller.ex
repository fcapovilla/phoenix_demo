defmodule PhoenixDemoWeb.AdminPageController do
  use PhoenixDemoWeb, :controller
  use Talon.PageController, concern: PhoenixDemo.Admin

  plug Talon.Plug.LoadConcern, concern: PhoenixDemo.Admin, web_namespace: Web
  plug Talon.Plug.Theme
  plug Talon.Plug.Layout, layout: {Elixir.PhoenixDemo.Admin.AdminLte.Web.LayoutView, "app.html"}
  plug Talon.Plug.View
  
  # TODO
  
end
