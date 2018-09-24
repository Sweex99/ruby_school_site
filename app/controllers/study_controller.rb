class StudyController < ApplicationController

  layout 'main_page'

    def index
      @done = '✓ '
      @title = 'Добавити типи користувачів (Учень, Учитель, Модератор, Адмін)'
      @title1 = 'Добавити функціонал постів'
      @title2 = 'Кастомізувати форми devis-у'
      @title3 = 'Реалізувати сторінку "Домашнє завдання"'
      @title4 = 'Рейтинг вчителів (root)'
      @title5 = ''
    end

end
