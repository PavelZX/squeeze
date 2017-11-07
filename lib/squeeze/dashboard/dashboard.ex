defmodule Squeeze.Dashboard do
  @moduledoc """
  The Dashboard context.
  """

  use OAuth2.Strategy

  import Ecto.Query, warn: false
  alias Squeeze.Repo


  @doc """
  Returns the list of activities.

  ## Examples

      iex> list_activities()
      [%Activity{}, ...]

  """
  def list_activities(user) do
  end

  @doc """
  Gets a single activity.

  Raises if the Activity does not exist.

  ## Examples

      iex> get_activity!(123)
      %Activity{}

  """
  def get_activity!(id), do: raise "TODO"

  defp query(opts) do
    string = opts
    |> Enum.map(fn {key, value} -> "#{key}=#{value}" end)
    |> Enum.join("&")

    "?" <> string
  end

  alias Squeeze.Dashboard.Goal

  @doc """
  Returns the list of goals.

  ## Examples

      iex> list_goals()
      [%Goal{}, ...]

  """
  def list_goals do
    Repo.all(Goal)
  end

  @doc """
  Gets a single goal.

  Raises `Ecto.NoResultsError` if the Goal does not exist.

  ## Examples

      iex> get_goal!(123)
      %Goal{}

      iex> get_goal!(456)
      ** (Ecto.NoResultsError)

  """
  def get_goal!(id), do: Repo.get!(Goal, id)

  @doc """
  Creates a goal.

  ## Examples

      iex> create_goal(%{field: value})
      {:ok, %Goal{}}

      iex> create_goal(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_goal(attrs \\ %{}) do
    %Goal{}
    |> Goal.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a goal.

  ## Examples

      iex> update_goal(goal, %{field: new_value})
      {:ok, %Goal{}}

      iex> update_goal(goal, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_goal(%Goal{} = goal, attrs) do
    goal
    |> Goal.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Goal.

  ## Examples

      iex> delete_goal(goal)
      {:ok, %Goal{}}

      iex> delete_goal(goal)
      {:error, %Ecto.Changeset{}}

  """
  def delete_goal(%Goal{} = goal) do
    Repo.delete(goal)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking goal changes.

  ## Examples

      iex> change_goal(goal)
      %Ecto.Changeset{source: %Goal{}}

  """
  def change_goal(%Goal{} = goal) do
    Goal.changeset(goal, %{})
  end

  alias Squeeze.Dashboard.Pace

  @doc """
  Returns the list of paces.

  ## Examples

      iex> list_paces()
      [%Pace{}, ...]

  """
  def list_paces do
    Repo.all(Pace)
  end

  @doc """
  Gets a single pace.

  Raises `Ecto.NoResultsError` if the Pace does not exist.

  ## Examples

      iex> get_pace!(123)
      %Pace{}

      iex> get_pace!(456)
      ** (Ecto.NoResultsError)

  """
  def get_pace!(id), do: Repo.get!(Pace, id)

  @doc """
  Creates a pace.

  ## Examples

      iex> create_pace(%{field: value})
      {:ok, %Pace{}}

      iex> create_pace(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_pace(attrs \\ %{}) do
    %Pace{}
    |> Pace.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a pace.

  ## Examples

      iex> update_pace(pace, %{field: new_value})
      {:ok, %Pace{}}

      iex> update_pace(pace, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_pace(%Pace{} = pace, attrs) do
    pace
    |> Pace.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Pace.

  ## Examples

      iex> delete_pace(pace)
      {:ok, %Pace{}}

      iex> delete_pace(pace)
      {:error, %Ecto.Changeset{}}

  """
  def delete_pace(%Pace{} = pace) do
    Repo.delete(pace)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking pace changes.

  ## Examples

      iex> change_pace(pace)
      %Ecto.Changeset{source: %Pace{}}

  """
  def change_pace(%Pace{} = pace) do
    Pace.changeset(pace, %{})
  end

  alias Squeeze.Dashboard.Event

  @doc """
  Returns the list of events.

  ## Examples

      iex> list_events()
      [%Event{}, ...]

  """
  def list_events do
    Repo.all(Event)
  end

  @doc """
  Gets a single event.

  Raises `Ecto.NoResultsError` if the Event does not exist.

  ## Examples

      iex> get_event!(123)
      %Event{}

      iex> get_event!(456)
      ** (Ecto.NoResultsError)

  """
  def get_event!(id), do: Repo.get!(Event, id)

  @doc """
  Creates a event.

  ## Examples

      iex> create_event(%{field: value})
      {:ok, %Event{}}

      iex> create_event(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_event(attrs \\ %{}) do
    %Event{}
    |> Event.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a event.

  ## Examples

      iex> update_event(event, %{field: new_value})
      {:ok, %Event{}}

      iex> update_event(event, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_event(%Event{} = event, attrs) do
    event
    |> Event.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Event.

  ## Examples

      iex> delete_event(event)
      {:ok, %Event{}}

      iex> delete_event(event)
      {:error, %Ecto.Changeset{}}

  """
  def delete_event(%Event{} = event) do
    Repo.delete(event)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking event changes.

  ## Examples

      iex> change_event(event)
      %Ecto.Changeset{source: %Event{}}

  """
  def change_event(%Event{} = event) do
    Event.changeset(event, %{})
  end

  alias Squeeze.Dashboard.Activity

  @doc """
  Returns the list of activities.

  ## Examples

      iex> list_activities()
      [%Activity{}, ...]

  """
  def list_activities do
    Repo.all(Activity)
  end

  @doc """
  Gets a single activity.

  Raises `Ecto.NoResultsError` if the Activity does not exist.

  ## Examples

      iex> get_activity!(123)
      %Activity{}

      iex> get_activity!(456)
      ** (Ecto.NoResultsError)

  """
  def get_activity!(id), do: Repo.get!(Activity, id)

  @doc """
  Creates a activity.

  ## Examples

      iex> create_activity(%{field: value})
      {:ok, %Activity{}}

      iex> create_activity(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_activity(attrs \\ %{}) do
    %Activity{}
    |> Activity.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a activity.

  ## Examples

      iex> update_activity(activity, %{field: new_value})
      {:ok, %Activity{}}

      iex> update_activity(activity, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_activity(%Activity{} = activity, attrs) do
    activity
    |> Activity.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Activity.

  ## Examples

      iex> delete_activity(activity)
      {:ok, %Activity{}}

      iex> delete_activity(activity)
      {:error, %Ecto.Changeset{}}

  """
  def delete_activity(%Activity{} = activity) do
    Repo.delete(activity)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking activity changes.

  ## Examples

      iex> change_activity(activity)
      %Ecto.Changeset{source: %Activity{}}

  """
  def change_activity(%Activity{} = activity) do
    Activity.changeset(activity, %{})
  end
end
