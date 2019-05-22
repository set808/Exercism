defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    String.replace(sentence, ~r/[.,\/#!$%@\^&\*;:{}=`~()]/, "", global: true)
    |> String.replace("_", " ", global: true)
    |> String.downcase()
    |> String.split()
    |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end
end
