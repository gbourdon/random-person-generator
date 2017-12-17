class String
    def exclude?(string)
        !(self.include? string)
    end
end

def readlines(file) # How to read a file's lines?
    result = [] # Sets up array "Result"
    File.open(file).each do |line| # Opens the file
        result.push line #Adds the line to the array 'result'
    end
    return result
end

# To-do: Expand this into "Project Opus", a rubbish text editor?
    # Things it should have:
        # STAGE 1) Ability to write to a specific line

outputs = []
out = []
file = ARGV[0] # Gets the file from the first augment

File.open(file).each do |line|
    outputs = line.split " " 
    out.push outputs[0]
end

out.each do |name|
    puts name.capitalize
end

=begin
File.open("surnames_new.txt", 'w') do |f| 
    out.each do |name|
        f.puts name.capitalize
    end
end
=end
