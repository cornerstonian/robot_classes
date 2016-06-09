class Robot
      attr_accessor :name

    def initialize
      @name = name
    end

    def say_hi
      puts "Hi"
    end

    def say_name
      "My name is #{name}!"
    end
end


class BendingUnit < Robot

  def bend(object_to_bend)
    puts "Bend #{object_to_bend}!"
  end

end

class ActorUnit < Robot

  def change_name(new_name)
    @name = new_name
  end

end



robey = ActorUnit.new
robey.change_name "Captain O.G."
puts robey.inspect

big_bend = BendingUnit.new
puts big_bend.bend("pipe")
