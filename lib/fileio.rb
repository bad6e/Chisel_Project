require './chisel'

class FileIo

  def open
    input = ARGV.first || "test.md"
    puts chisel = Chisel.new(input)
  end


end

FileIo.new.open



# puts "Please enter a markdown file: "
# input = gets.chomp.to_s



