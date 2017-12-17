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
gender = nil # Set this to have the person be a specific gender
firstName = nil # Set this to have the person have a specific First Name
lastName = nil # Set this to have the person have a specific Last Name

age = rand(age_range)
gender ||= randBool() ? "Guy" : "Girl"

firstName ||= gender == "Guy" ? readlines("names/boys.txt").sample.strip : readlines("names/girls.txt").sample.strip

lastName ||= readlines("names/surnames.txt").sample.strip

print "#{firstName} #{lastName} is #{age} and is a #{gender}"