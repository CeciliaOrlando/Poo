class Dog  # se define la clase Dog
  def bark # tenemos un metodo llamado Bark que retorna woof woof
    return "woof woof"
  end
end


# germand_shepherd.rb  - es otro archivo que llamamos con el require_relative
require_relative "dog"

class GermanShepherd < Dog  # Creamos otra clase GermanSheperd que es una subclase de Dog. Esto significa que GermanShepherd tiene acceso a todos los métodos y atributos de la clase Dog, como el método bark. Aunque no se haya definido ningún método específico en la clase GermanShepherd (como vemos que está vacía), todavía puede usar el método bark heredado de Dog.
end


# german_shepherd = GermanShepherd.new
# puts german_shepherd.bark
# me va a devolver woof woof 
