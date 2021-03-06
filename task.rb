class Task
  # STATE:
  # - title
  # - done
  # BEHAVIOR:
  # - mark as done

  attr_reader :title
  def initialize(title)
    @title = title
    @done = false
  end

  def mark_as_done!
    @done = true
  end

  def done?
    @done
  end
end
