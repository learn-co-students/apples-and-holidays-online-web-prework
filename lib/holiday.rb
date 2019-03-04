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
  holiday_supplies.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if holiday == :fourth_of_july
        return supplies[1]
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter].each {|holiday, supplies| supplies << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        puts "  #{holiday.to_s.split("_").collect {|grammar| grammar.capitalize}.join(" ")}: #{supplies.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_arr = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      bbq_arr << holiday if supplies.include?("BBQ")
    end
  end
  bbq_arr
end
