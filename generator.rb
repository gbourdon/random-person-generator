def randBool
    rand(0 .. 1) != 0
end

def readlines(file) # How to read a file's lines?
    result = [] # Sets up array "Result"
    File.open(file).each do |line| # Opens the file
        result.push line #Adds the line to the array 'result'
    end
    return result
end

age_range = (18 .. 100) # Set this to whatever age range you want
gender = "Male" # Set this to a specific gender that you want your person to be

age = rand(age_range)
gender ||= randBool() ? "Guy" : "Girl"

puts "Person is #{age} and a #{gender}"