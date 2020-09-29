require 'pry'

def clock_angle(time)
    time_array = time.split(':')
    #binding.pry
    time_array = time_array.map{|value| value.to_i}
    time_array[0] = time_array[0] * 30 + 0.5 * time_array[1]
    time_array[1] = time_array[1] * 6
    time_array = time_array.map do |value|
        if value == 360
            value = 0
        end
        value
    end


    # puts time_array
    # result = time_array[0] - time_array[1]
    # if result < 0
    #     return 360 + result
    # else
    #     return result
    # end

    time_array[0] >= time_array[1] ? time_array[0] - time_array[1] : 360 - (time_array[1] - time_array[0])

end
