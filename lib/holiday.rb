require 'pry'

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

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  #holiday_hash[:winter].each {|holiday| holiday << supply }
  
 holiday_hash[:winter].each { |holiday, item| item << supply }

   
 end
        
def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day][1] = supply 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season

all_winter_supplies = []  
holiday_hash[:winter].each { |holiday, supplies| all_winter_supplies << supplies}

all_winter_supplies.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_array = []
  capitalised_hols = []
  capitalised_hols_string = ""


  holiday_hash.each do |season, data|

    
    holiday_array << "#{season.to_s.capitalize!}:\n"
    
 
    data.each do |holiday, supplies| 
      
      holiday_string = holiday.to_s
      
    
    hol_string_caps = holiday_string.split('_')
    hol_string_caps.each {|string| string.capitalize!}
    

      holiday_array << "  #{hol_string_caps.join(' ')}:"
      holiday_array << " #{supplies.join(", ")}\n"
   
    end
    
  end
  

  #p holiday_array
  
   puts holiday_array.join("")
  

 end 



def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
bbq_holidays = []
<<<<<<< HEAD

holiday_hash.each do |season, data|

=======

holiday_hash.each do |season, data|

binding.pry 
>>>>>>> 4fdd5bc91e73d17991e8ddc5ae981e3d12faa301

data.each do |holiday, supplies|
  
  if supplies == "BBQ"
    
    bbq_holidays << holiday 

<<<<<<< HEAD
data.each do |holiday, supplies|
  
  
  if supplies.include?"BBQ"
    
    bbq_holidays << holiday 

end 



=======
end 

>>>>>>> 4fdd5bc91e73d17991e8ddc5ae981e3d12faa301
end

end 

return bbq_holidays 



 end 
