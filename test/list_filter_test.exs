defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the odd numbers of a list" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
      assert ListFilter.call([1, 3, 6, 43, "banana", "6", "abc"]) == 3
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc", 8, "8", 9, "9"]) == 5
    end
  end
end
