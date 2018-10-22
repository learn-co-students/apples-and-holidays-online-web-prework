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

# def add_supply_to_winter_holidays(holiday_hash, supply)
=begin
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)
=end
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday| 
    if season == :winter
      holiday.each do |key, value|
        value.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday| 
    if season == :spring
      holiday.each do |key, value|
        value.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supplies|
    supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_supplies.each do |season, holidays|
    puts "#{season.capitalize}:"
    holidays.each do |holiday, supplies|
      puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |seasons, holidays| 
    holidays.map do |holiday, supplies|
     holiday if supplies.include?("BBQ")
      end
    end.flatten.compact
  end




  


