# coding: UTF-8
require 'telegram/bot'

TOKEN = '5488647985:AAGTrmgtkH3UHUoIXiWFRvWyrSBW3pb5lDY'

ANSWERS = [
  # Позитивні
  "Само собов",
  "Можу тобі це гарантівувати",
  "Ітс 100% труе",
  "Я видів це у свому видінні",
  "Це настільки труе як і те що у тебе є волосся (на голові)",
  # Невпевнені відповіді
  "Мені здаєсі що так",
  "Швидше всього",
  "Перспективи як у курсу доляра",
  "Знаки кажут що та",
  "Так єстем",
  # Нейтральні
  "Щось на ельфійському, запитай ще раз",
  "Ясно. Потім запитай про це бо щось настрій не до того",
  "Ого, тобі ліпше не знати того",
  "Візьми себе в руки і запитай ще раз",
  "Еееееееем, ну як тобі сказати, ліпше промовчу",
  # Негативні
  "Навіть не думай",
  "Кажу тобі зразу що нє",
  "Зірки мені з неба кажуть що нє, так як я живу на вулиці то часто з ними говорю... щось мене занесло, питай дальше",
  "Я з'єднався з супутником і отримав відповідь 'ніхтн-кіхтн'",
  "Вов-вов, нє ясен пень, не питай більше такого"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
  bot.listen do |message|
    case message.text
    when '/start', '/start start'
      bot.api.send_message(
        chat_id: message.chat.id,
        text: "Вітаю тебе, #{message.from.first_name},юний падаванка! питай свої питання, але биро бо пивко стине"
      )
    else
      bot.api.send_message(
        chat_id: message.chat.id,
        text: ANSWERS.sample
      )
    end
  end
end
