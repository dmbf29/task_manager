class Task
  attr_accessor :title

  def initialize(title)
    @title = title
    @done = false
  end

  def done?
    @done
  end

  def mark_as_done!
    @done = !@done
  end
end
