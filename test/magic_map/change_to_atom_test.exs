defmodule Magic.Test.ChangeToAtomTest do
  use ExUnit.Case
  doctest MagicMap.ChangeToAtom

  alias MagicMap.ChangeToAtom, as: CtA

  test "change string key based map to atom key based map" do
    string_key_based_map = %{"a" => 1, "b" => 2}
    atom_key_based_map   = %{a: 1, b: 2}

    nested_string_key_based_map = %{"a" => %{"aa" => 1, "ab" => 2}, "b" => 2}
    nested_atom_key_based_map = %{a: %{aa: 1, ab: 2}, b: 2}

    assert atom_key_based_map == CtA.run(string_key_based_map)
    assert nested_atom_key_based_map == CtA.run(nested_string_key_based_map)
  end
end
