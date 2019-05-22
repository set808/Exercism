defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    conversions = %{?A => ?U, ?C => ?G, ?G => ?C, ?T => ?A}
    Enum.map(dna, &conversions[&1])
  end
end
