# TODO: code the Rice class
# Crop.rb
require_relative "crop" #importa la clase Crop para poder heredar de ella

class Rice < Crop # hereda de la clase Crop
  def water! #incrementa @grains en 5
    @grains += 5
  end

  def transplant! #incrementa @grains en 10
    @grains += 10
  end
end

#Crop.rb
class Crop
  attr_reader :grains  #Esto crea un lector para la variable de instancia @grains, lo que significa que se puede acceder a esta variable desde fuera de la clase (por ejemplo, crop.grains). es un getter

  def initialize #inicializa la variable de instancia @grains en 0
    @grains = 0
  end

  def ripe? #devuelve true si @grains es mayor o igual a 15
    @grains >= 15
  end

  # def water!
  #   @grains += 5 #incrementa @grains en 5
  # end
end


# TODO: code the Corn class
# rice.rb
require_relative "crop" #importa la clase Crop para poder heredar de ella

class Corn < Crop # hereda de la clase Crop
  def water! #incrementa @grains en 10
    @grains += 10
  end
end
