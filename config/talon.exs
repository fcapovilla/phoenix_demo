use Mix.Config

config :phoenix_demo, :talon,
  module: PhoenixDemo,
  themes: ["admin-lte"],
  concerns: [PhoenixDemo.Admin],
  
  web_namespace: Web
  

config :phoenix_demo, PhoenixDemo.Admin,
  resources: [
    PhoenixDemo.Admin.Blog.Comment,
    PhoenixDemo.Admin.Blog.Post,
  ],
  pages: [
  ],
  theme: "admin-lte",
  root_path: "lib/phoenix_demo/talon",
  path_prefix: "",
  repo: PhoenixDemo.Repo,
  router: PhoenixDemoWeb.Router,
  endpoint: PhoenixDemoWeb.Endpoint,
  schema_adapter: Talon.Schema.Adapters.Ecto,
  messages_backend: PhoenixDemo.Talon.Messages


