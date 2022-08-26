#Modificar una variable definida dentro de este metodo
def method1
  var1 = 'Hola'
  change_variable = proc.new {
    var1 = 'Modified string'
  }
  change_variable.call
end


# # Return en el lambda y no debe de salir el metodo sino el lambda
def method2
  lambda_return = -> {
    return 5
  }
  puts lambda_return.call
end


#crear una clase con un metodo protegido
#llamar el metodo protejido dentro del publico
#llamar al metodo publico mediante public instance methods
class MethodsClass
  def public_method
    protected_method
  end

  protected
  def protected_method
    puts "I'm a protected method"
  end
end

MethodsClass.public_instance_methods[0]


#Definir un modulo con una classe dentro
module SomeModule
  class ClassExample
    def say_something
      puts "Hello"
    end
  end

  def someMethod
    object = ClassExample.new
    object.say_something
  end
end