require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      if holiday == :fourth_of_july
      return supply[1]
    end
  end
 end
end
 
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, items|
      if season == :winter
        items << supply
      end
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, items|
      if holiday == :memorial_day
        items << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
      winter_supplies << supply
    end
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
      holiday.each do |name, supply|
        final_events = []
        events = name.to_s.split('_')
          events.each do |element|
            final_events << element.capitalize
          end
        puts "  #{final_events.join(" ")}: #{supply.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    holiday.each do |event, supply|
      supply.each do |item|
        if item == "BBQ"
        array << holiday.keys
        end
      end
    end
  end
  array.flatten
end







