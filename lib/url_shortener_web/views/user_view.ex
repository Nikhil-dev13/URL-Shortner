defmodule UrlShortenerWeb.UserView do
  use UrlShortenerWeb, :view
  alias UrlShortenerWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: %{
      id: user.id,
      email: user.email
    }}
  end

  def render("user.json", %{user: user, token: token}) do
    %{
      id: user.id,
      email: user.email,
      token: token
    }
  end


end
