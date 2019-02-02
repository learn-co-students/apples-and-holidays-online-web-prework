require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {r
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
  item=""
  holiday_hash.each do |k,v|
    if k==:summer
      v.each do |k2, v2|
        item=v2[1]
      end
    end
  end
  item
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  item=""
  holiday_hash.each do |k,v|
    if k==:winter
      v.each do |k2, v2|
        v2<<supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  item=""
  holiday_hash.each do |k,v|
    if k==:spring
      v.each do |k2, v2|
        v2<<supply
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name]=supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies=[]
  holiday_hash.each do |k,v|
    if k==:winter
      v.each do |k2, v2|
        winter_supplies<<v2
      end
    end
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |k,v|
    puts "#{k.to_s.capitalize}:"
    tex=""
    v.each do |k2, v2|
      if k2==:new_years
        tex="New Years"
      elsif k2==:fourth_of_july
        tex="Fourth Of July"
      elsif k2==:memorial_day
        tex="Memorial Day"
      else
        tex=k2.to_s.capitalize
      end

      supp=""
      supp=v2.join(', ')
      # v2.each do |supply|
      #   supp = "#{supply}"
      # end
      tex="  #{tex}: #{supp}"
      puts tex
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  asd=[]
  holiday_hash.each do |k,v|
    v.each do |k2, v2|
      asd<<k2 if v2.include?("BBQ")
    end
  end
  asd      
end
