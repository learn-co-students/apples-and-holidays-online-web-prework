require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
 holiday_supplies[:summer][:fourth_of_july][1]
  
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)
 
 holiday_supplies[:winter][:christmas]= ("Balloons")
      holiday_supplies[:winter][:new_years]= ("Balloons")
    
 
 
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  

   holiday_hash[:spring][:memorial_day] = supply
   
   
   
  
 
  
   
   
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  

  holiday_hash[season] = {holiday_name=>supply_array}
  

end

def all_winter_holiday_supplies(holiday_hash)
  
  array = []
  array.concat(holiday_hash[:winter][:new_years])
  array.concat(holiday_hash[:winter][:christmas])
    array
  
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
    holiday_hash.each do |k,v|
      puts  "#{k}".capitalize() + ":"
      v.each do |k1,v1|
        v1.collect do |item|
          item.capitalize()
        end
      
        k1String = k1.to_s
        array = k1String.split("_")
      
        array.collect do |item|
          item.capitalize!
        end
      
        keyString = array.join(" ")
     
       string = v1.join(", ")
     
      puts "  " + "#{keyString}" + ": " + "#{string}"
     
    end
end      
  
  
  
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end 

def all_holidays_with_bbq(holiday_hash)
  
   array=[]
   holiday_hash.each do |k,v|
     v.each do |k1,v1|
       if (v1.include?("BBQ"))
         array.push(k1)
      end 
    end
  end 
  array
  
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







