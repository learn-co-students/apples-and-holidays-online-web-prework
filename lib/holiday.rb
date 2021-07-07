require 'pry'

#question 1 
def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
   {
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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

#question 2  
def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end

#question 3 
def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
end

#question 4  
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

#question 5 
def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  christmas_supplies = holiday_hash[:winter][:christmas]
  new_year_supplies = holiday_hash[:winter][:new_years]
  christmas_supplies.concat(new_year_supplies).flatten
end

#question 6 
def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  
  holiday_hash.each do |season_key, season_value|
    season = season_key.to_s + ':'
    puts season.capitalize
    season_value.each do |key, val|
      hol_key = key.to_s.capitalize
      if hol_key.include?('_') 
        hol_key = hol_key.split('_').map { |x| x.capitalize }.join(' ')
        #hol_key = hol_key.join(' ')
      end 
      hol_value = val.join(', ')
      puts '  ' + hol_key + ':' + ' ' + hol_value
    end 
  end

end

#question 7 
#expect(all_holidays_with_bbq(holiday_supplies)).to eq([:fourth_of_july, :memorial_day])

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  output = []
  holiday_hash.each do |season_key, season_value|
    season_value.each do |key, val|
      if val.include?("BBQ")
        output.push(key) 
      end 
    end 
  end
  output
end







