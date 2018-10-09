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
  holiday_hash.fetch(:summer).fetch(:fourth_of_july)[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.fetch(:winter).map do |holiday, supply_list|
    supply_list.push(supply)
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.fetch(:spring).fetch(:memorial_day).push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.map do |hash_season, hash_holiday|
    if hash_season == season
      holiday_hash.fetch(season)[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash.map do |hash_season, hash_holiday|
    hash_holiday.map do |hash_holiday, supply_array|
      all_supplies.push(supply_array)
    end
  end
  all_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.map do |hash_season, hash_holiday|
    puts "#{hash_season.capitalize}:"
    hash_holiday.map do |hash_holiday, supply_array|
      holiday_formatted = hash_holiday.to_s.split('_').map { |x| x.capitalize }.join(' ')
      puts "  #{holiday_formatted}: #{supply_array.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array_BBQ = []
  holiday_hash.map do |hash_season, hash_holiday|
    hash_holiday.map do |holiday, supply_array|
      array_BBQ << holiday if supply_array.any? { |x| x == 'BBQ' }
    end
  end
  array_BBQ
end







