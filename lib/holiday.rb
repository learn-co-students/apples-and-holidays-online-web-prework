require 'pry'

holiday_hash = {
     :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }

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
  holiday_hash[:winter][:christmas][2] = "#{supply}"
  holiday_hash[:winter][:new_years][1] = "#{supply}"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][1] = "#{supply}"
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
    (all_supplies << holiday_hash[:winter].values).flatten!
  return all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
def capitalize_words(string)
  words = string.to_s.split("_")
  idx = 0
  while idx < words.length
    word = words[idx]
    word[0] = word[0].capitalize
    idx += 1
  end

  return words.join(" ")
end
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
  holiday.each do |attribute, value|
   if attribute.to_s.include? "_"
    puts "  #{capitalize_words(attribute)}:#{value.map { |i| " " + i.to_s + "" }.join(",")}"
  else 
    puts "  #{attribute.capitalize}:#{value.map { |i| " " + i.to_s + "" }.join(",")}"
  end
    end 
  end
end


def all_holidays_with_bbq(holiday_hash)
  bbq_include = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supply|
    if supply.include?("BBQ")
      bbq_include << holiday
  end
end 
end 
 return bbq_include
end

