defmodule Magic.Test.ChangeToStringTest do
  use ExUnit.Case
  doctest MagicMap.ChangeToAtom

  alias MagicMap.ChangeToString, as: CtS

  test "change string key based map to atom key based map" do
    string_key_based_map = %{"a" => 1, "b" => 2}
    atom_key_based_map   = %{a: 1, b: 2}

    nested_string_key_based_map = %{"a" => %{"aa" => 1, "ab" => 2}, "b" => 2}
    nested_atom_key_based_map = %{a: %{aa: 1, ab: 2}, b: 2}

    assert string_key_based_map == CtS.run(atom_key_based_map)
    assert nested_string_key_based_map == CtS.run(nested_atom_key_based_map)
  end
end
