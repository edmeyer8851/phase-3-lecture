require 'pry'

class Donation

    # macro: att_<>
    # class method that will generate instance methods

    # attr_reader: which creates the reader method
    # att_writer: which creates the writer method
    attr_reader :amount, :date, :organization
    attr_writer :amount, :date, :organization

    # attr_accessor: which gives us both reader and writer in one simple line of code
    attr_accessor :amount, :date, :organization

    # set rules upon instantiation, which gives each instance some values or even run
    # some behaviors

    # is a method that will run after .new runs, and is invoked on the new instance
    # instance method: method that will be called on the instance, a behavior that
    # belongs to the data we created from the class
    def initialize(amount, date, organization)
        # instance variable: variables that start with a @, they are variables that
        # get attached to the instance that they are defined for
        @amount = amount
        @date = date
        @organization = organization
    end

    def print 
        puts @amount
        puts @date
        puts @organization
    end

end

# Instance => byproduct of class, which we create using the method .new
feeding_america = Donation.new(100, "1/1/23", "Feeding America")   # creating a new instance
feeding_america.print

binding.pry
# local variables vs instance variables

# self: self is a special keyword in Ruby, self can return only 2 things:
# Either the instance or the class
# scope matters: 
    # if we're calling self inside of an instance method: self == the instance
    # if we're calling self inside of a class method: self == the class
