list = [1, 2, true, 3]
IO.inspect(list, label: "list is")

list_length = fn list -> length list end
IO.puts("list length: #{list_length.(list)}")

concat_lists = fn l1, l2 -> l1 ++ l2 end
list1 = [1,2,3]
list2 = [4,5,6]
IO.inspect(concat_lists.(list1, list2), label: "concatenated list is")

subtrac_lists = fn l1, l2 -> l1 -- l2 end
list3 = [1, true, 2, false, 3, true]
list4 = [true, false]
IO.inspect(subtrac_lists.(list3, list4), label: "subtracted list is")

head_of_list = fn list -> hd(list) end
list5 = [1,2,3]
IO.puts("head of list: #{head_of_list.(list5)}")

tail_of_list = fn list -> tl(list) end
IO.inspect(tail_of_list.(list5), label: "tail of list")
