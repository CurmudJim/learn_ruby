class Timer

  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    time = []
    # I don't fully understand why I needed to store the seconds in another variable to make this work.
    time_string = seconds
    # time << seconds / 3600 
    time << time_string / 3600
    if time[0] > 0
      time_string %= 3600
    end
    time << time_string / 60
    if time[1] > 0
      time_string %= 60
    end
    time << time_string
    time.collect! { |x| if x.to_s.length < 2; "0" + x.to_s else x.to_s end}
    @time_string = time.join ':'
  end

end


# This is a much better way of completing the task.
# https://github.com/djhart/ruby_test/blob/master/learn_ruby/09_timer/timer.rb
# class Timer
# attr_accessor :seconds
# def initialize
# @seconds = 0
# end
#
# def time_string
# @time_string = Time.at(seconds).utc.strftime("%H:%M:%S")
# end
# end
