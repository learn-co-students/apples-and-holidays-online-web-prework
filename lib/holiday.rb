require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, value|
    if season == :winter
      value.each do |holiday, supplies|
        supplies.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash.each do |season, value|
    if season == :spring
      value.each do |holiday, supplies|
        supplies.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supplies = []
  holiday_hash[:winter].each do |key, value|
    value.each do |supply|
      supplies.push(supply)
    end
  end
  supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |key, value|
    puts "#{key.to_s.capitalize}:"
    value.each do |holiday, stuff|
      day =[]
      a = holiday.to_s
      array = a.split("_")
      if array.length > 1
        array.each do |word|
          day << word.capitalize
        end
        day = day.join(" ")
      else day = array[0].capitalize
      end
      puts "  #{day}: #{stuff.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_list = []
  holiday_hash.each do |key, value|
    value.each do |holiday, stuff|
      stuff.each do |item|
        if item == "BBQ"
          bbq_list.push (holiday)
        end
      end
    end
  end
  bbq_list
end
