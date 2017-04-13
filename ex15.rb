# passing in a file as a command line argument
filename = ARGV.first

# open the file
txt = open(filename)

puts "Here is your file #{filename}: "
# read content of the file and print it
print txt.read
txt.close()

print "Type the filename again: "
# asking for a new filename via stdin
file_again = $stdin.gets.chomp

# open the file
txt_again = open(file_again)

# read content of the file and print it
print txt_again.read
txt_again.close()
