class Task::NotificationSlack

  def self.notify_on_slack(task_id, action, task_data_now, task_status)
    notifier = Slack::Notifier.new 'https://hooks.slack.com/services/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' do
      defaults channel: '#cugush',
                username: "Ben"
    end
      notifier.ping " You have #{action} task with ID: #{task_id}. The description of the task is: '#{task_data_now}' and its status is: #{task_status}"
  end
end
