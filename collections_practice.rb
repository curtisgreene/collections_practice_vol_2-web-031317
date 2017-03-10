require 'pry'
def begins_with_r(array)
  var = true
  array.each do |element|
    if element[0] != "r"
      var = false
    end
  end
  var
end

def contain_a(array)
  have_a = []
  array. each do |element|
    if element.include?("a") == true
      have_a << element
    end
  end
  have_a
end

def first_wa(array)
  winner = nil
  array.each do |element|
    if element[0..1] == "wa"
      winner = element
      break
    end
  end
  winner
end

def remove_non_strings(array)
  winner = []
  array.each do |element|
    if element.is_a?(String)
      winner << element
    end
  end
  winner
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  merged_hash = []
  keys.each do |first_name_pair|
    name = first_name_pair[:first_name]
    data.each do |person_hash|
      if person_hash[name]
        collection = person_hash[name]
        collection[:first_name] = name
        merged_hash << collection
      end
    end
  end
  merged_hash
end

def find_cool(cool)
  cool_hash = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      cool_hash << hash
    end
  end
  cool_hash
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |name, school_hash|
    location = school_hash[:location]
    if new_hash[location]
      new_hash[location] << name
    else
      new_hash[location] = []
      new_hash[location] << name
    end
  end
  new_hash
end
