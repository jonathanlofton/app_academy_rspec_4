class Temperature
  attr_accessor :f, :c, :temperatureF, :temperatureC

  def initialize(temp)
    if temp[:f]
      @temperatureF = temp[:f]
      @temperatureC = ftoc(temp[:f])
    else
      @temperatureC = temp[:c]
      @temperatureF = ctof(temp[:c])
    end
  end

  def ftoc(f)
    (( f - 32) / 1.8 ).round
  end

  def ctof(c)
    ( c * 1.8 ) + 32
  end

  def self.from_fahrenheit(temp)
    self.new(f: temp)
  end

  def self.from_celsius(temp)
    self.new(c: temp)
  end

  def in_fahrenheit
    temperatureF
  end

  def in_celsius
    temperatureC
  end

end

class Celsius < Temperature
  def initialize(temp)
    @temperatureC = temp
    @temperatureF = ctof(temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @temperatureF = temp
    @temperatureC = ftoc(temp)
  end
end
