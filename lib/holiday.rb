require 'pry'

holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].map {|holiday,list| list}
  array.flatten
  # return an array of all of the supplies that are used in the winter season
end



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday,items|
      holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")
      items = items.join", "
      puts"  #{holiday}: #{items}"
    end
  end

end

  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|

   holiday.map do |holidaze, item|

     if item.include?("BBQ")
       holidaze
     end

   end
end.flatten.compact
end
