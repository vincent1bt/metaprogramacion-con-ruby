class Fabrica
	def initialize(nombre, producto)
		@nombre = nombre
		@producto = producto
	end
end
##open class permite abrir cualquier clase, incluso una ya definida antes como String para
##asignarle nuevos metodos o sobreescribirlos

class Fabrica
	def do?
		"La fabrica se llama: #{@nombre}, y tiene el producto: #{@producto}"
	end
end

nissan = Fabrica.new("Nissan", "coches")

# puts nissan.do?
#puts Fabrica.instance_methods(false)
#puts nissan.methods
# puts nissan.instance_variables
##los methodos del objeto viven en la clase no en el objeto y alli son llamados methodos de instancia,
##las variables si se guardan en los objetos 

##puedes acceder a clases, modulos o constantes de la siguiente manera
class H
	X = "Hola x"
end
#puts H::X

Y = "Hola y"

module M
	class C
		#puts ::Y
	end
end

##Existen diferentes maneras de cargar archvivos o librerias de ruby 

module M2
	def something;end
end

class C2
	prepend(M2)
end

class G2 < C2; end

# puts G2.ancestors

module NewString
	refine String do
		def length
		  "es muy grande tu frase!"
		end
	end
end

class Check
	using NewString
	#puts "abcd".length
end

#puts "abcd".length

