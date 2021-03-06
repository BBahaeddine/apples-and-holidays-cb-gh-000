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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  suppliesArray = []
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.each{|supplies|
    supplies.each{|val|
      suppliesArray << val
    }
  }
  suppliesArray

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each{|key, value|
    season = ""
    key.to_s().split(" ").each{|item|
      season += item.capitalize!()
    }
    puts "#{season}:"
    value.each{|key2, value2|
      name = ""
      array = key2.to_s().split("_")
      if array.length == 1
        name = array[0].capitalize();
      else
        array.each_with_index{|item, index|
          if index == array.length - 1
            name += "#{item.capitalize!()}"
          else
            name += "#{item.capitalize!()} "
          end
        }
      end
      puts "  #{name}: #{value2.join(', ')}"
    }
    
  }
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

end


def all_holidays_with_bbq(holiday_hash)
  array = []
  holiday_hash.each{|key, value|
    value.each{|key2, val2|
      if val2.include?("BBQ")
        array << key2
      end
    }
  }
  array
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







