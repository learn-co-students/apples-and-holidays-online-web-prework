require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  
  holiday_hash.each do |k, v|
    v.each do |x, y|
      if x == :christmas || :new_years 
        
        y << supply 
      
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
    holiday_hash.each do |k, v|
    v.each do |a, b|
      if a == :memorial_day
        
        b << supply 
      
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |k, v|
       if k == season
       holiday_hash[season][holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
  holiday_hash.each do |k, v|
    if k == :winter 
    v.each do |x, y|       
         arr << y 
      
      end  
    end
  end
  arr.flatten.to_s
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |k, v|
    puts "#{k.capitalize}:"
    v.each do |a, b|
    #This takes a string str and splits it where the underscores, then joins toguether with a space and then capitalizes. For b it just joins them with a comma appropiately placed.
    
      puts "  #{a.to_s.split('_').map(&:capitalize).join(' ')}: " + "#{b.join(", ")}"
      
    end
 end
   
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
 arr = []
  holiday_hash.each do |k, v|
     
    v.each do |a, b|
    #puts a
      b.each do |x|
      if x.to_s == "BBQ"
        #puts a 
        arr << a      
        #puts "hi" 
      end
    end
  end
  
end
arr
end 







