class TasksRepository
  def initialize
    @tasks = [] # INSTANCES of tasks
  end

  def add(task) # an instance of a task
    @tasks << task
  end

  def all # returns an array of all tasks
    @tasks
  end

  def find(index) # return an instance of a task
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
