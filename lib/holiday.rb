require 'pry'
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
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas]=supply
  holiday_hash[:winter][:new_years]=supply
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
holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  new_arr = []
  holiday_hash[:winter].each {|name, supply| new_arr.push(supply) }
  new_arr.flatten
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, name|
    puts "#{season.capitalize}:"
    name.each do |name, supplies|
      name_string = name.to_s
      name_arr = name_string.split('_')
      name_arr.each {|w| w.capitalize!}
      name_string = name_arr.join(" ")
      sup_string = supplies.join(", ")
      puts "  #{name_string}: #{sup_string.chomp}"
# is there a more efficient way I could have done that?
# it seemed ok to use the same variable twice in this instance just to save space
# EDIT: I can actually put most of the manipulation in the "puts" line. I'll remember that next time
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, names|
    names.collect do |name, supplies|
      name if supplies.include?("BBQ")
    end
  end.flatten.compact
  end
  # another student said this was how to do this, but I don't understand how this works?
  #I understand that collect returns an array, but I've never called a variable before a biconditional, and I
  # didn't know you can call methods on "end". I have no idea how that even works.
