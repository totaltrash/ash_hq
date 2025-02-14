defmodule AshHqWeb.Components.CalloutText do
  @moduledoc "Highlights some text on the page"
  use Surface.Component

  slot default, required: true

  def render(assigns) do
    ~F"""
    <span class="text-orange-600 dark:text-orange-400 font-bold">
      <#slot />
    </span>
    """
  end
end
