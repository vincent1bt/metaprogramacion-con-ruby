# Kernel.send(:define_method, :put_number) do
#   puts "#{Random.new.rand(50)}"
# end

# class Humano
# end

# Humano.put_number
# String.put_number

# puts Kernel.methods

# def add_method(cl)
#   cl.class_eval do
#     def to_num
#       puts self.to_i
#     end
#   end
# end

# add_method(String)

# "12".to_num

# saludo = "hola mundo"
# despedida = "adios mundo"

# def saludo.to_up_case
#   self.upcase
# end

# #puts saludo.to_up_case
# #puts despedida.to_up_case

# puts saludo.singleton_methods.any? ? saludo.singleton_methods : false
# puts despedida.singleton_methods.any? ? despedida.singleton_methods : false

# class Humano
#   def self.say
#     puts "hola"
#   end
# end

# puts Humano.singleton_methods
# class Humano
# end

# class << Humano
#   def hey
#     "say hey"
#   end
# end

# class Humano
#   class << self
#     def hey
#       "say hey"
#     end
#   end
# end

# puts Humano.hey

# puts Humano.singleton_methods


module Mymodule
  def my_method
    "it works"
  end
end

class Myclass
  class << self
    include Mymodule
  end
end

puts Myclass.my_method


