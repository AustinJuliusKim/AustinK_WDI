class Tweet
  attr_reader :created_at #lets you get

  def initialize(message, tweeter, location, is_public)
    @message = message
    @tweeter = tweeter
    @location = location
    @is_public = is_public
    @created_at = Time.now
  end

  def message # getter method
    @message
  end

  def tweeter # getter method
    @tweeter
  end

  def location # getter method
    @location
  end

  def is_public # getter method
    @is_public
  end

  def created_at
    @created_at = Time.now # getter method
  end

  def message=(value) # setter
    @message = value
  end

  def tweeter=(value) # setter
    @tweeter = value
  end

  def location=(value) # setter
    @location =value
  end

  def is_public=(value) # setter
    @is_public = value
  end


end
