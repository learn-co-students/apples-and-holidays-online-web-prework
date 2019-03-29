require 'pry'

  # holiday_hash looks something like:
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
  # 

# Return the second element in the 4th of July array
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end
  
# Add supply to winter holidays
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].collect do |holiday, gear| gear << supply
  end
  holiday_hash
end

# Add supply to memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

# Add holiday and associated supplies to a given season
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

# Return an array of all winter supply values
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

# Iterate through given hash and output all supplies for each holiday and season
  # Output should look like
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
def all_supplies_in_holidays(holiday_hash)
  holiday_string = ""
  supply_string = ""
  holiday_hash.each do |season, holiday|
    season = season.to_s.capitalize
    puts "#{season}:"
    holiday.each do |holiday_name, supply|
      holiday_name = holiday_name.to_s
      name_array = holiday_name.split("_")
        name_array.collect do |word|
          word.capitalize!
        end
      holiday_name = name_array.join(" ")
      holiday_string = "  #{holiday_name}: "
      supply_string = supply.join(", ")
      holiday_string << supply_string
      puts holiday_string
    end
  end
end

# Return array of all holiday names that contain "BBQ"
def all_holidays_with_bbq(holiday_hash)
  key_array = [ ]
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, supply|
      if supply.include?("BBQ")
        key_array << holiday_name
      end
    end
  end
  key_array
end