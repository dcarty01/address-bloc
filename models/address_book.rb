require_relative "entry.rb"

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)

    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end

      index += 1
    end

    @entries.insert(index, Entry.new(name, phone, email))
  end

  def remove_entry(entry_to_remove)
    @entries.delete_if do |entry|
    #  puts "entry is #{entry.inspect}"
      entry.name == entry_to_remove.name
    end 
  end

end
