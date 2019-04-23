require 'pry'
def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort {|a, b| b <=> a}
end

def sort_array_char_count(arr)
  arr.sort_by {|a| a.length}
end

def swap_elements(arr)
  arr.collect do |e|
    if arr.at(1) == e
      e = arr.at(2)
    elsif arr.at(2) == e
      e = arr.at(1)
    else
      e
    end
  end
end

def swap_elements_from_to(arr, origin, dest)
  arr.collect do |e|
    if arr.at(origin) == e
      e == arr.at(dest)
    elsif arr.at(dest) == e
      e == arr.at(origin)
    else
      e
    end
  end
end

def reverse_array(arr)
  res = arr.reverse
end

def kesha_maker(arr)
  res = []
  temp = ""
  res = arr.each do |s|
    s.chars.each_with_index do |c, i|
      if i == 2
        temp += '$'
      else
        temp += c
      end
      binding.pry
    end
    temp += " "
    binding.pry
  end
  #binding.pry
end
