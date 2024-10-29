defmodule PracticeWeb.LightLive do
  # In Phoenix v1.6+ apps, the line is typically: use MyAppWeb, :live_view
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    <h1>
      Brightness
    </h1>

    <div id="light">
      <div class="meter">
        <div class="w-full bg-gray-200 rounded-full h-2.5 dark:bg-gray-700">
          <div class="bg-blue-600 h-2.5 rounded-full" style={"width:#{@brightness}%"}></div>
        </div>
        
        <span>
          <%= @brightness %>
        </span>
        
        <button
          type="button"
          class="text-green-700 hover:text-white border border-green-700 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 dark:border-green-500 dark:text-green-500 dark:hover:text-white dark:hover:bg-green-600 dark:focus:ring-green-800"
          phx-click="on"
        >
          +
        </button>
        
        <button
          type="button"
          class="text-red-700 hover:text-white border border-red-700 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2 dark:border-red-500 dark:text-red-500 dark:hover:text-white dark:hover:bg-red-600 dark:focus:ring-red-900"
          phx-click="off"
        >
          -
        </button>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    # Let's assume a fixed temperature for now
    socket = assign(socket, brightness: 10)
    {:ok, socket}
  end

  def handle_event("on", _, socket) do
    brightness = socket.assigns.brightness + 10
    socket = assign(socket, brightness: brightness)
    # socket = assign(socket, :brightness,&(&1+10))
    {:noreply, socket}
  end

  def handle_event("off", _, socket) do
    brightness = socket.assigns.brightness - 10
    socket = assign(socket, brightness: brightness)
    {:noreply, socket}
  end
end
