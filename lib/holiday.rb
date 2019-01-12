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
  holiday_supplies[:winter][:christmas] << "Balloons"
  holiday_supplies[:winter][:new_years] << "Balloons"

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_supplies[:spring][:memorial_day] << supply

end

#need help with add_new_holiday_with_supplies
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

supply_array = ["Flags", "Italian Food", "Parade Floats"]
valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
  fall_holiday = {:columbus_day => supply_array}
  winter_holiday = {:valentines_day => valentines_day_supplies}

new_season = Hash.new {|season, day, supply| season[] }


  if season == [:fall]
    holiday_supplies[:fall] = fall_holiday
  elsif season == [:winter]
    holiday_supplies[:winter] = winter_holiday
binding.pry
  end
  # remember to return the updated hash
  holiday_supplies


end


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_hol = holiday_supplies[:winter].values.flatten
  winter_hol

end

#need help
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

holiday_supplies.each do |season, holiday|
  season.to_s
  holiday.collect do |holiday, item|
    puts "#{season}:"
      "#{holiday} #{item}"
    end
    holiday.capitalize
  end




end

#need help
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holiday_supplies.each do |season, holiday|
    holiday.each do |holiday, item|
      if item == "BBQ"
        puts holiday
      end
    end
  end
end
