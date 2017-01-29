defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
  	String.split(String.downcase(sentence), ~r/[^[:alnum:]\-]+/u, trim: true)
  	|>Enum.reduce(%{}, fn(tag, acc) -> Map.update(acc, tag, 1, &(&1+1))end)
  end
end