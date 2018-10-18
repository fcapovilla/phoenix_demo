defmodule PhoenixDemo.Admin.AdminLte.Web.DatatableView do
  use PhoenixDemo.Talon.Web, which: :component_view, theme: "admin/admin-lte", module: PhoenixDemo.Admin.AdminLte.Web
  use Talon.Components.Datatable, __MODULE__

end
