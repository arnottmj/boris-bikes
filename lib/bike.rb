class Bike

  def initialize
    @is_working = true

  end

  def report_broken
    @is_working = false
  end

  def working?

    @is_working

  end

  def broken?
    !@is_working
  end

  def fix
    @is_working = true

  end

end



