class Task::NotificationSlack

  def self.notify_on_slack(task_id, action, task_data_now, task_status)
    notifier = Slack::Notifier.new 'https://hooks.slack.com/services/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' do
      defaults channel: '@bianca.zaharia',
                username: "NO"
    end
      notifier.ping " You have #{action} task with ID: #{task_id}. The description of the task is: '#{task_data_now}' and its status is: #{task_status}"
  end
end
