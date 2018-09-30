require 'pry'


def begins_with_r(array) 
  array.all? do |word|
    word.start_with?("r")
  end
end

 

def contain_a(array)  
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.class != String
  end
end

def count_elements(array)
  new_array = []
  array.each do |hash| 
    hash.each do |k,v|
      new_array << {:count=>(array.count(hash)), k=>v}
    end
 end
 new_array.uniq
end

def merge_data(keys, data)
  data_keys = data[0].keys
  (data[0]["#{data_keys[0]}"]).merge!(keys[0])
  (data[0]["#{data_keys[1]}"]).merge!(keys[1])
  
  data[0].values_at(keys).sort
  
<<<<<<< HEAD
  data[0].values
=======
  
>>>>>>> e1d5aa8596182cb09d10c065393dc65f91318b99
  
end

def find_cool(cool)
  cool.select do |hash|
    hash.has_value?("cool")
  end
end


def organize_schools(schools)
<<<<<<< HEAD
  
  organized_schools = Hash.new { |hash, key| hash[key] = []}
  schools.each do |school, location|
    location.each do |k, v|
      organized_schools[v] << school
    end
  end
  organized_schools.keys.sort
  organized_schools
=======
  organized_schools = Hash.new do |hash, key| hash[key] = []
    schools.each do |school, location|
      if location.eql?(location) == true
        location.each do |k, v|
      binding.pry
          organized_schools[v] = Array.new << school
          
        end
      else
        puts "what happened"
      end
    end
    organized_schools.values_at(keys).sort
    
  end
>>>>>>> e1d5aa8596182cb09d10c065393dc65f91318b99
end
