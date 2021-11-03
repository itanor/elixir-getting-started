
# ^x = 3
# ** (MatchError) no match of right hand side value: 3

# ok to match against same value
y = 2
^y = 2

x = 1
[^x, 2, 3] = [1, 2, 3]
{y, ^x} = {2, 1}
IO.puts y

# {y, ^x} = {2, 2}
# ** (MatchError) no match of right hand side value: {2, 2}

# when tail dosn't care
[head|_] = [1, 2, 3]
IO.puts "#{head}"
