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
  holiday_hash[:winter].collect do |holiday, items|
    items << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  items = []
  holiday_hash[:winter].each do |holiday, supplies|
  items << supplies
  end
  new_items = items.flatten
  new_items
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  item_phrase = ""
  item_array = []
  phrase = ""
  holiday_hash.each do |season, holiday|
    season_str = season.to_s.capitalize
    season_phrase = "#{season_str}:"
    phrase << "#{season_phrase }\n"
    holiday.each do |holiday, supply|
      supply.each do |item|
        item_array << item
        item_phrase = item_array.join(", ")
      end
      holiday_array = holiday.to_s.split("_").each {|h| h.capitalize!}
      holiday_str = holiday_array.join(" ").delete("_")
      holiday_phrase = " #{holiday_str}: "
      phrase << " #{holiday_phrase}"
      phrase << "#{item_phrase}\n"
      item_array = []
    end
  end
  puts phrase
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, item_array|
      if item_array.include?("BBQ")
        new_array << holiday.to_sym
      end
    end
  end
new_array

end
