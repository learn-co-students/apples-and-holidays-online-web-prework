
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
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
    
    holiday_hash.each do |season, holiday|
        if season == :winter
          holiday.each do |holiday, stuff|
            stuff << supply
          end
        end
    end
    holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
    holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
     holiday_hash[season][holiday_name] = supply_array
     holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
    new_list = []
     holiday_hash.each do |season, holiday|
        if season == :winter
          holiday.each do |holiday, stuff|
              stuff.each do |x|
                  new_list << x
          end
        end
      end
    end
    new_list

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

    
     holiday_hash.each do |season, holiday|
        puts "#{season.capitalize}:"
          holiday.each do |holiday, stuff|
            puts "  #{holiday.to_s.gsub("_", " ").split(/ |\_/).map(&:capitalize).join(" ")}: #{stuff.join(", ")}"
              
          end
        end
      
  end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
    names = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday, stuff|
        if stuff.include?("BBQ")
          names << holiday
          
       end
    end
  end
  names
end







