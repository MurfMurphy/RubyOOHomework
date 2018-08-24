#Problem 1

class Calculator

    def initialize(value1, value2)
        @value1 = value1
        @value2 = value2
    end
    def add
        @value1 + @value2
    end
    def subtract
        @value1 - @value2
    end
    def multiply
        @value1 * @value2
    end
    def divide
        @value1 / @value2
    end
end

test1 = Calculator.new(10,5)
test1.add
test1.subtract
test1.multiply
test1.divide


#Problem 2

class Elevator
    attr_accessor :floor

    def initialize(currentFloor)
        self.floor = currentFloor.to_i
        
    end

    def go_up
        self.floor = self.floor + 1 unless self.floor == 12
        cheery_greeting
    end

    def go_down
        self.floor = self.floor - 1 unless self.floor == 1
        cheery_greeting
    end

    def cheery_greeting
        puts "Welcome to #{self.floor}, Mr. Anderson"
    end

end

test2 = Elevator.new(10)
test2.go_up
test2.go_up
# Last one will return Welcome to 12, will not go past
test2.go_up