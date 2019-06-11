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
    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    holiday_hash[:winter].each do |holiday, supplies|
        supplies << supply
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array

    holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.flatten

end

def symbol_to_title_string(symbol)
    words = symbol.to_s.split("_")
    words = words.collect do |word|
        word.capitalize
    end

    words.join(" ")

end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |season, season_hash|
        puts "#{season.capitalize}:"

        season_hash.each do |holiday, supplies|
            day = "  #{symbol_to_title_string(holiday)}: "

            supplies.each do |supply|
                day += "#{supply}"

                if supply != supplies[-1]
                    day += ", "
                end
            end

            puts day
        end
    end

end

def all_holidays_with_bbq(holiday_hash)
    holidays_with_bbqs = []
    holiday_hash.each do |season, season_hash|

        season_hash.each do |holiday, supplies|

            if supplies.include?("BBQ")
                holidays_with_bbqs << holiday
            end
        end
    end
    holidays_with_bbqs
end
