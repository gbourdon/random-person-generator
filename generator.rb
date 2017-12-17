def readlines(file) # How to read a file's lines?
    result = [] # Sets up array "Result"
    File.open(file).each do |line| # Opens the file
        result.push line #Adds the line to the array 'result'
    end
    return result
end

age_range = (18 .. 100) # Set this to whatever age range you want
gender = nil # Set this to a specific gender that you want your person to be
