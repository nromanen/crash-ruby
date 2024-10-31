# frozen_string_literal: true

require("date")

class Person
  attr_accessor :last_name
  attr_writer :first_name
  attr_reader :salary


  def initialize(first_name, last_name, birth_date)
    @first_name = first_name
    @last_name = last_name
    self.birth_date = birth_date
  end

  def birth_date=(birth_date)
    if birth_date >= Date.today
      raise ArgumentError.new("Birth date must be in the past")
    end
    @birth_date = birth_date
  end


  def to_s
    "±±±±±#{@first_name} #{last_name} (#{@birth_date}), #{salary}"
  end


  def inspect
    "super"
  end

  def say_hello
    "Hello, #{name}!"
  end

  def other?
    return true
  end

  def get_age
    Date.today.year - @birth_date.year - ((Date.today.month > @birth_date.month || (Date.today.month == @birth_date.month && Date.today.day >= @birth_date.day)) ? 0 : 1)
  end

  private :other?
end
#
#
# a = "678"
# b = "123"
# c = "678"
#
# arr = [a, b]
# arr.delete(c)
#



# p "1", arr.size


#
p1 = Person.new('John', 'Doe', Date.new(2020, 11, 1))
puts p1
p p1

# p2 = Person.new('John2', 'Doe', Date.new(2022, 11, 1))
#
# p3 = Person.new('John', 'Doe', Date.new(2020, 11, 1))
# persons = [p1, p2]
# persons.delete(p3)
# p "2", persons.size




# p persons.include?(p3)



require 'set'


# set = Set.new
# set.add(p1).add(p2).add(p3)
# p set.size

#
# birth_date = Date.new(2024,11,30)
# p birth_date > Date.today