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
  holiday_hash.each do |season, event|
    if season == :winter
      event.each do |event, supplies|
        supplies << supply
      end
    end
  end  
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # This method works and is cleaner but I wanted to practice iteration
  #holiday_hash[:winter].values.flatten
  
  holiday_hash.each do |season, event|
    if season == :winter
      return event.values.flatten
    end
  end  
end

def all_supplies_in_holidays(holiday_hash)
  #iterate into first level of hash
  holiday_hash.each do |season, event|
    #convert :season symbol to string, capitalize it and print it
    puts "#{season.to_s.capitalize}:"
    #iterate into 2nd level of hash
    event.each do |holiday, supplies|
      #convert :holiday season to string and split it into an array with "_" delimiter
      holiday_names = holiday.to_s.split("_")
      #iterate through array and capitalize each element
      holiday_names.each do |holiday_name|
        holiday_name.capitalize!
      end
      #print holiday name array joined with " " seperator and 
      #associated supplies array joined with ", " seperator
      puts "  #{holiday_names.join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  #create answer array
  answer_array = []
  # iterate into 1st level of hash
  holiday_hash.each do |season, event|
    #iterate into 2nd level of hash
    event.each do |holiday, supplies|
      #binding.pry
      #check if the value array on this level contains "BBQ"
      if supplies.include?("BBQ")
        #shovel key symbol from this level into answer array
        answer_array << holiday
      end
    end
  end 
  #return answer_array
  answer_array
end
