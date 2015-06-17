def greeting


  ARGV.each_with_index do |arg, i|
    if i != 0
      puts "#{ARGV.first} #{arg}!"
    end
  end

end

greeting