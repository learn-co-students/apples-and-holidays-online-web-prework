require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash = {
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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  new_a = holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {
    |season, hash|
    puts "#{season.to_s.capitalize}:"
    hash.each {
      |holiday, supply|
        new_holiday = []
        holiday.to_s.split("_").each {
          |word|
          new_holiday << word.capitalize }
        new_holiday = new_holiday.join(" ")
        supply = supply.join(", ")
        puts "  #{new_holiday}: #{supply}"
      }
    }
end

def all_holidays_with_bbq(holiday_hash)
result = []
holiday_hash.each {
  |season, hash|
    hash.each {
      |holiday, supplies| if supplies.any? {|supply| supply == "BBQ"}
      result << holiday
    end
  }
}
result
end
