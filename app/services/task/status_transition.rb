#
class Task::StatusTransition
  def self.status_transition(task, status_param)
    raise if status_param == task.status
    raise if status_param == 'done' && task.status == 'todo'
    raise if status_param == 'todo'
    raise if task.status == 'done'
    true
  end
end
