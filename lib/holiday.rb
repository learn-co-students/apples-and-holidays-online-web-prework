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
  holiday_hash[:winter][:christmas] = "Balloons"
  holiday_hash[:winter][:new_years] = "Balloons"
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
  
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {}
  holiday_hash[season][holiday_name] = supply_array
  # new_holiday = Hash.new(holiday_hash: {:season=> :holiday_name =>[supply_array]})
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

  # return an array of all of the supplies that are used in the winter seas
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, season_hash |
    season_capitalize = season.capitalize
    season_string_capitalize = season_capitalize.to_s
    season_string_hash = season_hash.to_s
    puts  season_string_capitalize + ":" 
    season_hash.each do | holiday, supply|
      holiday_string = holiday.to_s
      holiday_split = holiday_string.split("_")
      holiday_caps = holiday_split.map.each do |item|
        item.capitalize
      end
      holiday_joined = holiday_caps.join(" ")
      supply_string = supply.join(", ")

      puts "  " + holiday_joined + ": " + supply_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  new_array = []
  holiday_hash.each do |season, season_hash| 
    season_hash.each do |holiday, supply|
      if supply.include?("BBQ")
        new_array.push(holiday)
      end
    end
  end
new_array
end







