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
  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end 


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_new|
    puts "#{season.to_s.capitalize}:"
  holiday_new.each do |holiday, supplies|
    puts "  #{holiday.to_s.split("_").map { |word| word.capitalize }
    .join(" ")}: #{supplies.join(", ")}"
  
  end 
  end   
end 

  # iterate through holiday_hash and print items such that your readout #resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


def all_holidays_with_bbq(holiday_hash)
   new_holidays = []
   holiday_hash.each do |season, holiday_names|
    # binding.pry 
    holiday_names.each do |holidays, supplies|
      #binding.pry 
      if supplies.include? "BBQ"
        new_holidays << holidays
       end
       end 
  end 
  new_holidays

end 
  
  # iterate top, to get season and holiday names
  # holiday name points to nested hash if supplies array includes? BBQ if #Yes add holiday name to new array return new array 

 
# holiday_hash.sort_by {|key, value| value['BBQ']}
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"



#{
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





