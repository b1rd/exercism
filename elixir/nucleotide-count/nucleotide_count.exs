defmodule NucleotideCount do
  @nucleotides %{?A => 0, ?T => 0, ?C => 0, ?G => 0}
  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer

  def count([head | tail], nucleotide, acc \\ 0) do
    count(tail, nucleotide, (if head == nucleotide, do: acc+1, else: acc+0))
  end

  def count([], _, acc) do
    acc
  end
  

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  # @spec histogram([char]) :: map
  def histogram([head | tail], acc \\ @nucleotides) do
    histogram(tail, Map.update!(acc, head, &(&1+1)))
  end

  def histogram([], acc) do
    acc
  end
end