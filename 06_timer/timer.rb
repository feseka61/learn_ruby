class Timer
  def initialize
    @seconds = 0
  end
  def seconds
    @seconds
  end
  def seconds= second
    secs = second % 60
    tempmin = second / 60
    minutes = tempmin % 60
    hours = tempmin / 60

    @time = Time.new(2020, 2, 15, hours, minutes, secs)
  end
  def time_string
    @time.strftime("%H:%M:%S")
  end
end
