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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter][:christmas] << "#{supply}"
holiday_hash[:winter][:new_years] << "#{supply}"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << "#{supply}"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
holiday_hash
end


def all_winter_holiday_supplies(holiday_hash)
  all_winter_array = []
    holiday_hash.each {|season, holiday_name|
        if season == :winter
          holiday_name.collect {|holiday,supplies|

            all_winter_array << supplies}
        end
    }
  all_winter_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each {|season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each {|holiday,supplies|
      puts "  #{holiday.to_s.split("_").map(&:capitalize).join(' ')}: #{supplies.join(", ")}"
      }
    }
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  answer_array = []
  holiday_hash.each {|season, holiday|
      holiday.each {|holiday, supplies|
        if supplies.include? "BBQ"
          answer_array << holiday
#binding.pry
        end
      }
  }
  answer_array
end
