defmodule Lasagna do
  @doc """
  Gives how long the lasagna should be in the oven

  ## Examples

    iex> Lasagna.expected_minutes_in_oven()
    40
  """
  @spec expected_minutes_in_oven() :: integer
  def expected_minutes_in_oven, do: 40

  @doc """
  Calculates the remaining minutes in the oven

  ## Examples

    iex> Lasagna.remaining_minutes_in_oven(30)
    10
  """
  @spec remaining_minutes_in_oven(time :: integer) :: integer
  def remaining_minutes_in_oven(time), do: expected_minutes_in_oven() - time

  @doc """
  Calculates the preparation time based on the number of layers

  ## Examples

    iex> Lasagna.preparation_time_in_minutes(2)
    4
  """
  @spec preparation_time_in_minutes(num_of_layers :: integer) :: integer
  def preparation_time_in_minutes(num_of_layers), do: num_of_layers * 2

  @doc """
  Calculates the total time in minutes based on the number of layers and the time

  ## Examples

    iex> Lasagna.total_time_in_minutes(3, 20)
    26
  """
  @spec total_time_in_minutes(num_of_layers :: integer, time :: integer) :: integer
  def total_time_in_minutes(num_of_layers, time),
    do: preparation_time_in_minutes(num_of_layers) + time

  @doc """
  Gives the alarm sound when the lasagna is ready

  ## Examples

    iex> Lasagna.alarm()
    "Ding!"
  """
  @spec alarm() :: String.t()
  def alarm, do: "Ding!"
end
