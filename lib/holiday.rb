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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].each {|k, v| v << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring].each do |holiday, supplies|
    supplies << supply
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
holiday_hash
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
supplies = []
supplies << holiday_hash[:winter].values 
supplies.flatten


end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


temp_holiday = ""
temp_holiday2 = []
temp_season = ""
temp_list = ""


holiday_hash.each do |season, holiday|
  temp_season = season.to_s.capitalize
  puts temp_season+":"
    holiday.each do |hol,list|
      temp_holiday = hol.to_s
      temp_holiday2 = temp_holiday.split("_")
      temp_holiday2.map!(&:capitalize)
      temp_holiday = temp_holiday2.join(" ")
      temp_list = list.join(", ")
      puts "  "+temp_holiday+": "+temp_list

    end
  end
end



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
 
  new_list = []
holiday_hash.each do |season, holiday| holiday.each do |k, v| 
  
if v.include? ("BBQ")
  new_list << k

end
end
end
return new_list
end

