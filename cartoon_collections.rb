require 'pry'
def roll_call_dwarves(array)
  # ["Doc", "Dopey", "Bashful", "Grumpy"] prints out the 7 dwarfs in a numbered list
  # each_with_index , uses puts
  array.each_with_index do | name, index |
    puts "#{index+1}. #{name} "    
  end
end

def summon_captain_planet(array)
  # ["earth", "wind", "fire", "water", "heart"]
  # #=> ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"] 
  array.map! { |i| i.capitalize } 
  array.map! { |i| i + "!".to_s }
  return array
end

def long_planeteer_calls(array)
  # returns true if any calls are longer than 4 characters
  # returns false if all calls are 4 characters or less
  bool = (array.any? {|i| i.length > 4})
  return bool
end



def find_the_cheese(array)
  # find and return first cheese string
  # if no cheese return nil
  cheese_types = ["cheddar", "gouda", "camembert"]
  #bool = array.include?(cheese_types)
  cheese_types.each do |i|
    if array.include?(i) 
      return i
    end
  end
  return nil


  
  '''
  if array.include?{|i| i.include?(cheese_types)}
    binding.pry
    #does in fact returns false // seems to not get to this 
    #[banana cheddar sock]    
    temp = array.select{|i| i = "cheddar"}
    #temp = array.select{|i| i.include?(cheese_types)} #should use detect if I only want first one
    return temp    
  else   
    #[ham cellphone computer] 
    return 
  end
  '''
end
