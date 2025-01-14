class Car # es una clase de auto con 3 atributos model, brand y kilometers
  attr_reader :model         # puede saber el car model
  attr_writer :brand         # puede actualizar el car brand
  attr_accessor :kilometers  # puede

  def initialize(model, brand, kilometers) # constructor de la clase car con 3 atributos model, brand y kilometers respectivamente que son los atributos de la clase car 
    @model = model
    @brand = brand
    @kilometers = kilometers
  end
end


class Restaurant # es una clase de restaurante con 1 atributo name que es el nombre del restaurante y no puede ser modificado una vez creado
  attr_reader :name # puede saber el nombre del restaurante pero no puede modificarlo

  def initialize(name) # constructor de la clase restaurant con 1 atributo name que es el nombre del restaurante
    @name = name # inicializa el atributo name con el valor del parametro name que recibe el constructor de la clase restaurant al ser instanciado un objeto de la clase restaurant con el metodo new de la clase restaurant se crea un objeto de la clase restaurant con el nombre del restaurante que se le pasa como parametro al metodo new de la clase restaurant
  end
end
