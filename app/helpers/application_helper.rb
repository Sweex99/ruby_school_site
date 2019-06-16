module ApplicationHelper

  def number_willing_to_join
    Join.all.count
  end

end
