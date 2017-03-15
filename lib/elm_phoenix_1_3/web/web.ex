defmodule ElmPhoenix13.Web do
  @moduledoc """
  A module that keeps using definitions for controllers,
  views and so on.

  This can be used in your application as:

      use ElmPhoenix13.Web, :controller
      use ElmPhoenix13.Web, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: ElmPhoenix13.Web
      import Plug.Conn
      import ElmPhoenix13.Web.Router.Helpers
      import ElmPhoenix13.Web.Gettext
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/elm_phoenix_1_3/web/templates",
                        namespace: ElmPhoenix13.Web

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import ElmPhoenix13.Web.Router.Helpers
      import ElmPhoenix13.Web.ErrorHelpers
      import ElmPhoenix13.Web.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import ElmPhoenix13.Web.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
