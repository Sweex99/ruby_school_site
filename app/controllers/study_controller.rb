class StudyController < ApplicationController
  # before_action :authenticate_user!
  layout 'application'

  def index
    @done = '✓ '
    @title = 'Добавити типи користувачів (Учень, Учитель, Модератор, Адмін)'
    @title1 = 'Добавити функціонал постів'
    @title2 = 'Кастомізувати форми devis-у'
    @title3 = 'Реалізувати сторінку "Домашнє завдання"'
    @title4 = ''
  end
end
