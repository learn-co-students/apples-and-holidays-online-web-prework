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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supply|
        array.push(supply)
        end
        return array.flatten
      end
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
  
  holiday_hash.each do |season, data|
    capitalized_season = season.to_s.capitalize!
    puts "#{capitalized_season}:"
    data.each do |holiday, supply|
      holiday_string = holiday.to_s.gsub("_", " ")
      holiday_array = holiday_string.split
        holiday_array.each do |word|
          word.capitalize!
        end
      final_holiday_string = holiday_array.join(" ")
    final_supply = supply.join(", ")
    puts "  #{final_holiday_string}: #{final_supply}"

    end
  end
end

def all_holidays_with_bbq(holiday_hash)
holiday_array = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supply|
        if supply.include?("BBQ")
          holiday_array.push(holiday)
        end
    end
  end
    return holiday_array
end







