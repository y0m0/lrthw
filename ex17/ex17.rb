from_file, to_file = ARGV

# puts "Copying from #{from_file} to #{to_file}"
#
# in_data = open(from_file).read
#
# puts "The input file is #{in_data.length} bytes long"
#
# puts "Does the output file exists? #{File.exist?(to_file)}"
# puts "Ready, hit RETURN to continue, CTRL-C to abort."
# $stdin.gets
#
# out_file = open(to_file, 'w')
# out_file.write(in_data)
#
# puts "Allright, all done."
# out_file.close
#

# one line solution
open(to_file, 'w').write(open(from_file).read);
