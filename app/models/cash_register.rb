
class CashRegister
    def initialize(queue)
        @client
        @queue = queue
    end

    def next_client
      if @client != nil
        if @client.time_cash_register == 0
          @client = @queue.remove
        else
          @client.subtraction_time_cash_register
        end
      else
        @client = @queue.remove
      end
    end

    def next_iteration
    end
end
