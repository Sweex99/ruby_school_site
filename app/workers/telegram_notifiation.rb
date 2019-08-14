class TelegramNotification
  include Sidekiq::Worker

  def perform(*args)
    bot = Telegram::Bot::Client.new(ENV['BOT_TOKEN'])
    user = User.where.not(telegram_id: '')
    user.each do |u|
      bot.send_message chat_id: u.telegram_id, text: 'Text'
    end
  end
end
