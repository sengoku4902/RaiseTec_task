class Communication

  def greet
    puts "Hello"
  end
end

class Playground < Communication

end

greeting = Communication.new
greeting.greet
