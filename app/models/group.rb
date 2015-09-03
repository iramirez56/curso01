class Group < ActiveRecord::Base

    has_many :tasks

    TIPO1 = 1
    TIPO2 = 2

    TIPOS = {

      TIPO1 => "Este es 1"
      TIPO2 => "Este es 2"

    }

    def tipo_name
      TIPOS[tipo_id]
    end

    def hola
      puts "hola"
    end
end
