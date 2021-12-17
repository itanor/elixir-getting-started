defmodule Comprehensions do
  def generators do
    for n <- 1..5, do: n * n
  end

  def generators_and_filters_by_pattern do
    values = [good: 1, good: 2, bad: 3, good: 4]
    for {:good, n} <- values, do: n * n
  end

  def generators_and_filters do
    for n <- 0..5, rem(n, 2) == 0, do: n * n
  end

  def generators_with_filter(filter_fn) do
    for n <- 1..10, filter_fn.(n), do: n * n
  end

  def cartesian_product(list) do
    for i <- [:a, :b, :c], j <- list, j > 2 and i != :b, do: {i, j}
  end

  def use_of_into_with_map do
    for {key, val} <- %{"a" => 1, "b" => 2}, into: %{}, do: {key, val * val}
  end

  def use_of_reduce do
    sentence = "the sad truth is that the truth is sad"
    for word <- String.split(sentence), reduce: %{} do
      acc -> Map.update(acc, word, 1, &(&1 + 1))
    end
  end

  def generators_and_filters_by_pattern_2 do
    people = [{"john", 23, true}, {"jane", 17, false}, {"bob", 30, true}]
    for {name, age, married} <- people do
      "#{name} is #{age} years old and " <> (if married, do: "", else: "not ") <> "married"
    end
  end

  def generators_and_filters_skipping do
    people = [{"john", 23, true}, {"jane", 17, false}, {"bob", 30, true}]
    for {name, age, _married} <- people do
      "#{name}: #{age} years old"
    end 
  end

  def generators_and_filters_ignoring do
    people = [{"john", 23, true}, {"jane", 17, false}, {"bob", 30, true}]
    for {name, _, true} <- people do
      name <> " is married"
    end
  end

  def permutations do
    clothes = ~w(shirt pants socks)
    sizes = ~w(S M L XL)a

    for part <- clothes, size <- sizes, do: {part, size}
  end

  def uniq_option do
    repeated_values = [1, 1, 2, 2, 3, 4, 5]
    for n <- repeated_values, uniq: true, do: n * 2
  end
end
