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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash[:winter].each {|holiday, supply| supply << "Balloons"}
end
def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
arr = []
holiday_hash[:winter].each do |holiday, supply|
  arr << supply
  end
  arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
 holiday_hash.each do |season, holiday|
   puts "#{season.capitalize}:"
      holiday.each do |name, supply|
        puts "  #{name.to_s.split("_").collect {|w| w.capitalize}.join(" ") }: #{supply.join(", ")}"
       end
    end
end

def all_holidays_with_bbq(holiday_hash)
new_arr = []
holiday_hash. each do |season, holiday|
  holiday.each do |name, supply|
    if supply.include?("BBQ")
      new_arr << name
      end
    end 
   end
new_arr
end






