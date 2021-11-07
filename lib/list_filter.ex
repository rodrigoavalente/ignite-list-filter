defmodule ListFilter do
  require Integer

  def call(list) do
    numbers = Enum.flat_map(list, fn item ->
      try do
        case Integer.parse(item) do
          {val, _rest} -> [val]
          :error -> []
        end
      rescue
        FunctionClauseError -> if is_number(item) do [item] else [] end
      end
    end)
    length(Enum.filter(numbers, &Integer.is_odd/1))
  end
end
