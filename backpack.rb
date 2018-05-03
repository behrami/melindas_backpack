class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end

  def prepare
    # set up local variables used by rest of prepare method
    weather = @attributes[:weather]
    day_of_week = @attributes[:day_of_week]

    add_clothes(weather)

    add_gym_shoes(day_of_week)

    add_lunch(day_of_week)

  end

  # Ensure appropriate clothing is added to backpack
  def add_clothes(weather)
    if weather == 'rainy'
      @items << 'pants'
      @items << 'shirt'
      @items << 'umbrella'
    elsif weather == 'cold'
      @items << 'pants'
      @items << 'shirt'
      @items << 'jacket'
    else
      @items << 'pants'
      @items << 'shirt'
    end
  end

  # Ensure gym shoes are added to backpack if it's monday or thursday(gym days)
  def add_gym_shoes(day_of_week)
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  # Bring a packed lunch on all weekdays
  def add_lunch(day_of_week)
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    elsif false
      @items << 'snacks'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def display_backpack_info
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
