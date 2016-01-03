require_relative "mruby1.rb"

# nissan = Fabrica.new("nissan", "motos")
#puts nissan.send("do?")

# method = ARGV[0]

# define_method "#{method}" do |num|
#   puts "hola desde #{method}, #{num * 2}"
# end

#send(method,12)
# class Fabrica
# 	define_method "saludar" do
# 		puts "hola"
# 	end
# end

#puts nissan.public_send(method)
# class Fabrica
#   private
#     def do_private
#       puts "hola desde funcion privado"
#     end
# end

# nissan = Fabrica.new("nissan", "motos")
# puts nissan.public_send("do_private")
# nissan.do_private

# class Fabrica
#   def method_missing(name)
#   	puts "Intentando ejecutar un metodo"
#     begin
#     	puts "hey"
#     rescue NoMethodError
#     	puts "No existe el metodo"
#     end
#   end
# end

# honda.crear

# class Fabrica
#   def method_missing(name)
#   	begin
#   		puts "Error, el metodo no es valido: "
#   		puts "Lista de metodos: #{Fabrica.instance_methods(false)}"
#   	rescue NoMethodError
#   	 	puts "error en el metodo"
#   	end
#  end
# end

# nissan = Fabrica.new("honda", "coches")
# nissan.hey

# def sumar
#   puts yield(2,4)
# end

# sumar() {|x,y| x + y}
# x = ""
# define_method :simple_method do |&block|
# 	x = "hola"
# 	block.call
# end

nissan = Fabrica.new("nissan", "coches")
honda = Fabrica.new("honda", "motos")


# nissan.instance_eval do
# 	def num
# 		x = 5
# 		puts "#{x} #{@producto}"
# 	end
# end

# nissan.num

Fabrica.class_eval do
	def num
		x = 6
		puts "#{x} #{@producto}"
	end
end

nissan.num
honda.num



