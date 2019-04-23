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
  res = ""
  arr.each do |s|
    s.chars.each_with_index do |c, i|
      if i == 2
        res += '$'
      else
        res += c
      end
    end
    res += " "
  end
  res.split(" ")
end

def find_a(arr)
  arr.select {|s| s.start_with?("a") }
end

def sum_array(arr)
  arr.inject(:+)
end

def add_s(arr)
  arr.each_with_index.map do |e, i|
    e += s unless i == 1
  end
end