require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
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

  holiday_hash.each do |old_season, data|
    if old_season == season
      data.store(holiday_name,supply_array)
    end
  end

  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |season, data|
    puts "#{season.capitalize}:"
    data.each do |holiday, array|
      holiday_s = holiday.to_s
      holiday_s = holiday_s.split("_")
      holiday_s.each {|word| word.capitalize!} 
      holiday_s = holiday_s.join(" ")
      puts "  #{holiday_s}: #{array.join(", ")}"
    end
  end

end

def all_holidays_with_bbq(holiday_hash)

  all_holidays_with_bbq = []
  
  holiday_hash.each do |season, data|
    data.each do |holiday, array|
      array.each do |item|
        if item == "BBQ"
          all_holidays_with_bbq << holiday
        end
      end
    end
  end
  all_holidays_with_bbq
          
end
