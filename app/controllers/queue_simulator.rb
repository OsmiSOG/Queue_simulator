require_relative '../models/market'
require_relative '../models/client'
require_relative '../views/printer_console'
class QueueSimulator
    def initialize
        @type_simulation
        @delta_t
        @market = Market.new
        @iterations
    end
    def run
        get_data
    end
    def define_clients
    end
    def enter_clients
    end
    def delay
    end
    def get_data
       get_type_simulation
       get_iterations
       get_delta_t
    end
    protected
    def get_type_simulation
        puts 'ingrese el tipo de simulacion que desea hacer.'
        puts '(multiples cajas-unica fila / multiples cajas-multiples filas) 1 / 2:'
        input = gets.chomp.to_i
        if input == 1
            @type_simulation = :M_M
        elsif input == 2
            @type_simulation = :M_1
        else
            puts 'opcion incorrecta'
            get_type_simulation
        end
    end
    def get_iterations
        puts 'ingrese el tiempo de simulacion en minutos:'
        @iterations = gets.chomp.to_i
    end
    def get_delta_t
        puts 'ingrese el delta de tiempo deseado para cada iteracion en segundos'
        @delta_t = gets.chomp.to_i
    end
end