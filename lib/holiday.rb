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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |key, data|
    data.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  def title_case(string)
    new_string = string.collect {|word| word.capitalize}
  end

  holiday_hash.each do |key, value|
    puts "#{key.capitalize}:"
      value.each do |key, value|
        if value.length == 1
          supplies = "#{value[0].upcase == value[0] ? value[0] : title_case(value[0].split(' ')).join(' ')}"
        else
          supplies = ""
          value.each do |supply|
            if value[-1] == supply
              supplies.concat(supply.upcase == supply ? supply : title_case(supply.split(' ')).join(' '))
            else
              supplies.concat("#{supply.upcase == supply ? supply : title_case(supply.split(' ')).join(' ')}, ")
            end
          end
        end
        key = title_case(key.to_s.split('_'))

        puts "  #{key.join(' ')}: #{supplies}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  output = []
  holiday_hash.each do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        output.push(holiday)
      end
    end
  end
  output
end
