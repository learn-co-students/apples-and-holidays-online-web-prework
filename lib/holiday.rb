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
  holiday_hash[:winter][:christmas] = supply
  holiday_hash[:winter][:new_years] = supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  winter_holiday_supplies = holiday_hash[:winter].collect {|key, value| value}
  winter_holiday_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |season_key, holiday_hash_value|
    output_season_key = season_key.to_s.capitalize!
    puts "#{output_season_key}:"
    holiday_hash_value.each do |holiday_key, supply_array_value|
      holiday_string_array = holiday_key.to_s.split('_')
      capital_holiday_string_array = holiday_string_array.collect {|element| element.capitalize!}
      holiday_string = capital_holiday_string_array.join(' ')
      output_holiday_string = "#{  holiday_string}: "
      output_supply = supply_array_value.join(", ")
      puts "  #{output_holiday_string + output_supply}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end







