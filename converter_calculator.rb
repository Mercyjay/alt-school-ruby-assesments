def convert(parameter, value, from, to)
    case parameter
    when :weight
        
        if from == :kg
            pounds = value * 2.20462
            puts "#{pounds.round(2)} pounds"
        elsif from == :pound
            kg = value / 2.20462
            puts "#{kg.round(2)} kg"
        else 
            puts "Please provide a valid weight from value"
        end
               
    when :distance
        if from == :miles
            kilometer = value *  1.60934
            puts "#{kilometer.round(2)} km"
        elsif from == :km
            kilometer = value / 1.60934
            puts "#{kilometer.round(2)} miles"
        else 
            puts "please provide a valid unit"
        end
    when :temperature
        if from == :celsius
            celcius = value - 273.15
            puts "#{celcius.round(2)} celsius"
        elsif from == :kelvin
            kelvin = value +  273.15
            puts "#{kelvin.round(2)} kelvin"
        else
            puts "provide a valid value"
        end
    end   
end
convert(:weight, 20, :kg, :pound)
convert(:weight, 44, :pound, :kg)

convert(:weight, 1, :miles, :km)


convert(:temperature, 1, :celcius, :kelvin)
