defmodule MagicMap.ChangeToString do
  @moduledoc false

  @doc ~S"""
  This function aims to change a map to format with key is string.

  ## Examples
    iex> MagicMap.ChangeToAtom.run(%{a: 1, b: 2})
    %{"a" => 1, "b" => 2}
    iex> MagicMap.ChangeToAtom.run(%{a: %{aa: 1, ab: 2}, b: 2})
    %{"a" => %{"aa" => 1, "ab" => 2}, "b" => 2}
  """
  def run(list) when is_list(list), do: Enum.map(list, &run/1)

  def run(map) when is_map(map) do
    map
    |> Map.to_list()
    |> Enum.map(fn {key, value} ->
      if is_atom(key) do
        {Atom.to_string(key), run(value)}
      else
        {key, run(value)}
      end
    end)
    |> Enum.into(%{})
  end

  def run(value), do: value

end
