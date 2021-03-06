module BTCData
  class Parser
    attr_accessor :save_dir

    def initialize feed_object, exchange_name, save_dir, debug=false
      @feed_object = feed_object
      @exchange_name = exchange_name
      @save_dir = save_dir
      @debug = debug

      post_init
    end

    def post_init
    end

    def parse message
      # message = JSON.parse(event.data)
      if @debug
        p [:message, @exchange_name, message]
      end
    end

    def dump
      @feed_object.dump_data
    end
  end
end

