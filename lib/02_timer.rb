class Timer
    attr_writer :seconds

    def initialize
        @seconds = 0
    end

    def hours
        @seconds / 3600
    end

    def minutes
        (@seconds % 3600) / 60
    end

    def seconds
        (@seconds % 3600 ) % 60
    end

    def padding(time)
        if time < 10
            "0"+ time.to_s
        else
            time.to_s
        end
    end


    def time_string
        "#{padding(hours)}:#{padding(minutes)}:#{padding(seconds)}"
    end



end
