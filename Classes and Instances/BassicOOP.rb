class OrangeTree # es una clase de arbol de naranja con 3 atributos age, height y fruits respectivamente que son los atributos de la clase OrangeTree
  attr_reader :age, :height, :fruits

  def initialize # constructor de la clase OrangeTree con 3 atributos age, height y fruits respectivamente que son los atributos de la clase OrangeTree que son inicializados en 0 y false respectivamente
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def dead? # metodo de la clase OrangeTree que retorna el valor del atributo dead de la clase OrangeTree que es un booleano que indica si el arbol esta muerto o no se inicializa en false y se actualiza en true si el arbol tiene mas de 50 años o 100 años de edad
    @dead # retorna el valor del atributo dead de la clase OrangeTree
  end

  def one_year_passes! # metodo de la clase OrangeTree que actualiza los atributos de la clase OrangeTree age, height y fruits respectivamente y llama a los metodos may_die!, grow! y produce_fruits! de la clase OrangeTree respectivamente si el arbol no esta muerto y si esta muerto no hace nada y retorna nil al final del metodo
    unless dead? # si el arbol no esta muerto llama a los metodos may_die!, grow! y produce_fruits! de la clase OrangeTree respectivamente
      may_die! # llama al metodo may die de la clase OrangeTree que actualiza el atributo dead de la clase OrangeTree si el arbol tiene mas de 50 años o 100 años de edad respectivamente si el arbol no esta muerto no hace nada y si esta muerto no hace nada y retorna nil al final del metodo
      grow! # llama al metodo grow de la clase OrangeTree que actualiza el atributo age y height de la clase OrangeTree respectivamente si el arbol no esta muerto y si esta muerto no hace nada y retorna nil al final del metodo
      produce_fruits!
    end
  end

  def pick_a_fruit! # metodo de la clase OrangeTree que actualiza el atributo fruits de la clase OrangeTree si el arbol tiene frutas y si no tiene frutas no hace nada y retorna nil al final del metodo
    @fruits -= 1 if @fruits.positive? # si el arbol tiene frutas actualiza el atributo fruits de la clase OrangeTree y si no tiene frutas no hace nada y retorna nil al final del metodo
  end

  private # metodos privados de la clase OrangeTree que no pueden ser llamados desde fuera de la clase OrangeTree solo pueden ser llamados desde dentro de la clase OrangeTree

  def may_die! # metodo privado de la clase OrangeTree que actualiza el atributo dead de la clase OrangeTree si el arbol tiene mas de 50 años o 100 años de edad respectivamente si el arbol no esta muerto no hace nada y si esta muerto no hace nada y retorna nil al final del metodo
    if @age == 100 # si el arbol tiene 100 años de edad actualiza el atributo dead de la clase OrangeTree a true y si no tiene 100 años de edad no hace nada y retorna nil al final del metodo
      @dead = true # actualiza el atributo dead de la clase OrangeTree a true si el arbol tiene 100 años de edad
    elsif @age > 50 # si el arbol tiene mas de 50 años de edad actualiza el atributo dead de la clase OrangeTree a true y si no tiene mas de 50 años de edad no hace nada y retorna nil al final del metodo
      @dead = (@age >= rand(51..100)) # actualiza el atributo dead de la clase OrangeTree a true si el arbol tiene mas de 50 años de edad y si no tiene mas de 50 años de edad no hace nada y retorna nil al final del metodo y respecto del rango de edad de 51 a 100 años de edad que se le pasa como parametro al metodo rand de la clase OrangeTree se actualiza el atributo dead de la clase OrangeTree a true si el arbol tiene mas de 50 años de edad y si no tiene mas de 50 años de edad no hace nada y retorna nil al final del metodo y el metodo rand de la clase OrangeTree retorna un numero aleatorio entre 51 y 100 respectivamente
    end
  end

  def grow! # metodo privado de la clase OrangeTree que actualiza el atributo age y height de la clase OrangeTree respectivamente si el arbol no esta muerto y si esta muerto no hace nada y retorna nil al final del metodo
    @age += 1 # actualiza el atributo age de la clase OrangeTree sumandole 1 si el arbol no esta muerto y si esta muerto no hace nada y retorna nil al final del metodo
    @height += 1 if @age <= 10 # actualiza el atributo height de la clase OrangeTree sumandole 1 si el arbol no esta muerto y si  esta muerto no hace nada y retorna nil al final del metodo y si el atributo age de la clase OrangeTree es menor o igual a 10 actualiza el atributo height de la clase OrangeTree sumandole 1 y si el atributo age de la clase OrangeTree es mayor a 10 no hace nada y retorna nil al final del metodo
  end

  def produce_fruits! #  metodo privado de la clase OrangeTree que actualiza el atributo fruits de la clase OrangeTree respectivamente si el arbol no esta muerto y si esta muerto no hace nada y retorna nil al final del metodo
    if @age > 5 && @age < 10 # si el arbol tiene mas de 5 años y menos de 10 años de edad actualiza el atributo fruits de la clase OrangeTree a 100 y si no tiene mas de 5 años y menos de 10 años de edad no hace nada y retorna nil al final del metodo
      @fruits = 100 # actualiza el atributo fruits de la clase OrangeTree a 100 si el arbol tiene mas de 5 años y menos de 10 años de edad
    elsif @age >= 10 && @age < 15 # si el arbol tiene 10 años o mas y menos de 15 años de edad actualiza el atributo fruits de la clase OrangeTree a 200 y si no tiene 10 años o mas y menos de 15 años de edad no hace nada y retorna nil al final del metodo
      @fruits = 200 # actualiza el atributo fruits de la clase OrangeTree a 200 si el arbol tiene 10 años o mas y menos de 15 años de edad respectivamente
    else # si el arbol tiene 15 años o mas actualiza el atributo fruits de la clase OrangeTree a 0 y si no tiene 15 años o mas no hace nada y retorna nil al final del metodo
      @fruits = 0 # actualiza el atributo fruits de la clase OrangeTree a 0 si el arbol tiene 15 años o mas respectivamente
    end
  end
end
