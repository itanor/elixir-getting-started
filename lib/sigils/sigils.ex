defmodule Sigils do
  def regexp(string) do
    regexp = ~r/^foo$|^bar$/i
    string =~ regexp
  end

  def strings do
    ~s(this is a string with "double" quotes, not 'single' ones)
  end

  def char_lists do
    ~c(this is a char list containing 'single quotes')
  end

  def word_lists do
    ~w(foo bar bat bay)
  end

  def with_c_modifier do
    ~w(this is a char list containing 'single quotes')c
  end

  def with_s_modifier do
    ~w(this is a string with double quotes not single ones)s
  end

  def with_a_modifier do
    ~w(this is a string with double quotes not single ones)a
  end

  def interpolation_and_escaping do
    ~s(String with escape codes \x26 #{"inter" <> "polation"})
  end

  def without_interpolation_and_escaping do
    ~S(this not support escaping and/or \x26 #{interpolation})
  end

  def sigils_with_heredocs do
    ~s"""
    this 
    is 
    a 
    heredoc 
    string!!
    """
  end

  def heredocs_words_count_by_new_line do
    words = sigils_with_heredocs() |> String.split("\n")
    for word <- words, reduce: %{} do acc -> Map.update(acc, word, 1, &(&1 + 1)) end
  end

  def calendar_sigils_date do
    ~D[2021-12-16]
  end

  def calendar_sigils_time do
    ~T[23:45:07.0]
  end

  def naive_date_time do
    ~N[2021-12-16 23:00:07]
  end

  def utc_date_time do
    ~U[2021-12-16 23:00:01Z]
  end

  # defining new sigils...
  def sigil_i(string, []), do: String.to_integer(string)
  def sigil_i(string, [?n]), do: -String.to_integer(string)
end
