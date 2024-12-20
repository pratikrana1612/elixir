defmodule DiscussWeb.TopicHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use DiscussWeb, :html

  import Phoenix.HTML.Form
  # import DiscussWeb.ErrorHelpers  # If you have custom error helpers defined

  embed_templates "topic_html/*"
end
