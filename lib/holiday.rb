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
  
  holiday_hash[:winter].each { |key, value|
    value << supply
  }

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  
  holiday_hash[season][holiday_name] = supply_array
  
  # remember to return the updated hash
  
  holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  holiday_hash[:winter].collect {|key, value|
    value
  }.flatten

end

def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each {|season, holiday|
    
    puts season.to_s.capitalize + ":"
    
    holiday_hash[season].each {|key, item|
      if key.to_s.include?("_")
        
        puts "  #{key.to_s.split("_").map {|item| item.capitalize}.join(" ")}: #{item.join(", ")}"
      else
        puts "  #{key.to_s.capitalize}: #{item.join(", ")}"
      end
    }

  }
  

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_hash.collect {|season, holiday|
    holiday_hash[season].collect {|key, item|
      if item.include?("BBQ")
          key
      end
    }
  }.flatten.compact

end







