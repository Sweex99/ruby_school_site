module HomeWorksHelper

  def date_of_next(day)
    date = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    date + delta
    return date.strftime('%Y-%m-%d')
  end

  def bod(day)
    DateTime.now.beginning_of_week(day)
  end
end
