require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each{|k,v|
    holiday_hash[:winter][k].push(supply)
  }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  out = []
  holiday_hash[:winter].each_value{|holiday| out.push(holiday) }
  out.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each_key{|key|
    puts key.id2name[0].upcase+key.id2name[1...key.length]+":"
    holiday_hash[key].each_key{|holiday|
      holiday_title = holiday.id2name.split("_").map{|word|
        word[0].upcase+word[1..word.length]}.join(" ")+": "+
        holiday_hash[key][holiday].join(", ")
      puts "  "+holiday_title
       }

     }
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  out = []
  holiday_hash.each_value{|season|

    season.each_value{ |holiday|
      if holiday.include?("BBQ")
        #puts holiday
        out.push(season.keys[0])
      end
    }}
    out
end

#puts all_holidays_with_bbq(
#  {
#    :winter => {
#      :christmas => ["Lights", "Wreath"],
#      :new_years => ["Party Hats"]
#    },
#    :summer => {
#      :fourth_of_july => ["Fireworks", "BBQ"]
#    },
#    :fall => {
#      :thanksgiving => ["Turkey"]
#    },
#    :spring => {
#      :memorial_day => ["BBQ"]
#    }
#  }
#)
