#
class Task::SmsNotification
  def self.sms_notify(message)
    client = Nexmo::Client.new(key: 'e3b7b216', secret: '3f7013f05250e72b')

    response = client.send_message(from: '40758707644', to: '40758707644', text: message)
    if response['messages'][0]['status'] == '0'
      puts "Sent message #{response['messages'][0]['message-id']}"
    else
      puts "Error: #{response['messages'][0]['error-text']}"
    end
  end
end
