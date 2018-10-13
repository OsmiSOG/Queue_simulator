
class CashRegister
  attr_accessor :client
    def initialize(queue)
        @client
        @queue = queue
    end

    def next_client
      if @queue.num_clients > 0
        @client = @queue.remove
      end
    end

    def next_iteration
    end
end
