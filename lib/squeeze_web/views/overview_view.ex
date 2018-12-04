defmodule SqueezeWeb.OverviewView do
  use SqueezeWeb, :view

  alias Squeeze.Accounts.User
  alias Squeeze.Dashboard.Event
  alias Squeeze.Distances

  def title(_page, _assigns) do
    "Dashboard"
  end

  def full_name(%User{} = user), do: User.full_name(user)

  def improvement_amount(%User{} = user), do: User.improvement_amount(user)

  def format_goal(user) do
    user.user_prefs.duration
    |> format_duration()
  end

  def race_date(%User{user_prefs: %{race_date: date}}) do
    date
    |> Timex.format!("%b #{Ordinal.ordinalize(date.day)}", :strftime)
  end

  def relative_date(user) do
    user.user_prefs.race_date
    |> relative_time()
  end

  def format_event(nil), do: "Rest"
  def format_event(%Event{} = event) do
    event.name
  end

  def todays_workout(events) do
    events
    |> List.first()
    |> format_event()
  end

  def next_workout(events) when length(events) > 2 do
    event = Enum.at(events, 1)
    "Today's next workout: #{format_event(event)}"
  end

  def next_workout(events) do
    event = events |> List.last()
    "Tomorrow's workout: #{format_event(event)}"
  end

  def weekly_distance(activities) do
    today = Date.utc_today()
    date = Date.add(today, -7)
    activities
    |> Enum.filter(fn(x) -> Timex.after?(x.start_at, date) end)
    |> Enum.map(&(&1.distance))
    |> Enum.sum()
  end

  def weekly_milage(activities) do
    meters = activities |> weekly_distance()
    Float.round(meters / Distances.mile_in_meters, 2)
  end
end