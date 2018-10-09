require_relative 'queue'

class Client
    def initialize
        @wait_time
        @name
        @time_cahs_register
    end

    def choose_queue(queues)
      shorter_queue = queues.first
      queues.each do |queue|
        if queue.num_clients < shorter_queue.num_clients
          shorter_queue = queue
        end
      end
      shorter_queue
    end


end
