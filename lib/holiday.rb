require 'pry'
  def second_supply_for_fourth_of_july(holiday_hash)
    
   holiday_hash[:summer][:fourth_of_july][1]
        
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key2, value2|
      value2 << "#{supply}"
      end
     end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |key, value|
    if key == :spring
      value.each do |key2, value2|
        if key2 == :memorial_day
          value2 << "#{supply}"
        end
      end 
    end  
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] =supply_array 
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |key2, value2|
          winter_supplies << value2 
      end
    end
  end 
  winter_supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
formatted_supplies = []

holiday_hash.each do |season, holiday|
 puts "#{season.capitalize}:"
 holiday.each do |holiday2, supplies|
    formatted_holiday = []
    holiday2 = holiday2.to_s
    holiday2 = holiday2.gsub(/[_]/, " ")
    holiday2 = holiday2.split
    holiday2.each do |word|
      formatted_holiday << word.capitalize
      formatted_holiday
    end  
    holiday_list = formatted_holiday.join(" ")
    supply_list = supplies.join(", ")
   puts "  #{holiday_list}: #{supply_list}"
  end  
 end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  list = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday2, supplies|
      if supplies.include?("BBQ")
        list << holiday2
      end  
    end
  end  
  list
end

