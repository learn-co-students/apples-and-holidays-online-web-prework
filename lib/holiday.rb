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
  
  supplies = []
 
holiday_supplies.each do |key, value|
  value.each do |key2, value2|
    if key2 == :christmas || :new_years
    supplies << value2
  end
end
  



def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
 supplies = []
 
holiday_supplies.each do |key, value|
  value.each do |key2, value2|
    if key2 == :memorial_day
    supplies.replace(value2)
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_supplies[:columbus_day_supplies] = "Flags", "Parade Floats", "Italian Food"
  holiday_supplies[:valentines_day_supplies] = "Cupid Cut-Out", "Candy Hearts"
  return holiday_supplies

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    supplies = []
    
    holiday_supplies.each do |key, value|
    value.each do |key2, value2|
    supplies << value2
  end
  
   puts supplies.flatten
end
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
   supplies = []
 
holiday_supplies.each do |key, value|
   supplies << value.symbolize_keys
end
 
puts supplies
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   
   supplies = []
 
holiday_supplies.each do |key, value|
  value.each do |key2, value2|
   if supplies.include? "BBQ"
     return key2
  end
 
 
 puts supplies
 end
end






