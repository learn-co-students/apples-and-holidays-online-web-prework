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
  # holiday_hash[:winter][:christmas] << supply
  # holiday_hash[:winter][:new_years] << supply

  holiday_hash[:winter].map {|holiday, supplies| supplies << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] =supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  # supply_arr = []
  # holiday_hash.each do |season, data|
	# 	# puts "#{season}"
	# 		if season == :winter
	# 			# puts "#{season}: #{data}"
	# 			data.each do |holiday,supply|
	# 				supply_arr.concat(supply)
	# 				# puts "#{supply}"
	# 			end
	# 		end
	# end
	# supply_arr

  holiday_hash[:winter].map {|holiday,supplies| supplies}.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

	# holiday_hash.each do |season,data|
	# 	puts "#{season.to_s.capitalize!}:"
	# 	data.each do |holiday,supply|
	# 		hol = holiday.to_s.split('_')
	# 		hol.each do |name|
	# 			name.capitalize!
	# 			# puts "#{name}"
	# 		end
	# 		hol = hol.join(" ")
	# 		puts "  #{hol}: #{supply.join(', ')}"
	# 	end
	# end

  holiday_hash.each do |season, holidays|
      puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        puts "  #{holiday.to_s.split("_").collect {|word| word.capitalize}.join(" ")}: #{supplies.join(", ")}"
      end
    end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
	# [:fourth_of_july, :memorial_day]
	# key_arr = []
	# holiday_hash.each do |season,data|
	# 	# puts "#{season}"
	# 	data.each do |holiday, supply|
	# 		# puts "#{supply}"
	# 		supply.each do |value|
	# 			if value == "BBQ"
	# 				key_arr << holiday_hash[season].keys
	# 				# puts "#{holiday_hash[season].keys}"
	# 			end
	# 		end
	# 	end
	# end
	# key_arr.flatten

  holiday_hash.map { |season, holidays|
    holidays.map {|holiday,supply|
      if supply.include?("BBQ")
        holiday
        # binding.pry
      end
    }
  }.flatten.compact #remove nil in array
end
