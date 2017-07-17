require 'singleton'

class FilePractice

  include Singleton

  attr_reader :file

  def create_file
    extension, file_name = ask_for_file

    @file = File.open("#{file_name}.#{extension}", 'w+')
    @file.truncate(0)
    puts 'Creating new file....'
    puts 'File created successfully'

    add_lines

  end

  def add_lines
    print 'How many lines will be added? '
    number_of_lines = gets.to_i

    number_of_lines.times do |line|
      print "Text for #{(line + 1)}: "
      text = gets
      @file.write(text)
    end

    @file.close
  end

  def add_extra_lines
    extension, file_name = ask_for_file

    @file = File.open("#{file_name}.#{extension}", 'a')
    add_lines
    puts 'The new lines have been added!'
  end

  def ask_for_file
    print 'Introduce file name: '
    file_name = gets.chomp
    print 'Introduce extension: '
    extension = gets.chomp
    return extension, file_name
  end
end

file = FilePractice.instance
file.create_file
file.add_extra_lines
file.add_extra_lines
