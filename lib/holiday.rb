 require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)


  holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)

holiday_hash[:winter][:christmas].push(supply)
holiday_hash[:winter][:new_years].push(supply)
end



def add_supply_to_memorial_day(holiday_hash, supply)

  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)

winter_supplies = []

holiday_hash.each do |key, value|

  if key == :winter

      value.each do |k,v|
        winter_supplies.push(v)
      end

    end

end
winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)


  holiday_hash.each do |key, value|

    puts "#{key}:".capitalize
    #puts value

    value.each do |k,v|
      #puts k.to_s.capitalize
      holiday = k.to_s.split('_').map(&:capitalize).join(' ')
      supplies = v.join(', ')
      puts "  #{holiday}: #{supplies}"


  end

end

end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []

  holiday_hash.each do |season, holiday|

        holiday.each do |name, supply|

          if supply.include?("BBQ")
            holiday_array << name

          end

        end

      end

holiday_array

end
