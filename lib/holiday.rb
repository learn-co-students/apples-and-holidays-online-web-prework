require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |attribute, value|
        value << supply
     end
    end
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
  array = holiday_hash[:winter].collect do |holiday, supply|
    supply
  end
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize! << ":"
    holiday.each do |holiday, supplies|
      supplies = supplies.join(", ")
      holiday = holiday.to_s.split("_").collect { |holiday| holiday.capitalize }.join(" ") << ":"
      puts "  " + holiday + " " + supplies
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, items|
      if items.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end







