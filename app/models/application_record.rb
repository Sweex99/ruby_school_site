class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def check_frags
    @frags = nil
    if current_user.frags == 's'
      return @frags = 'Student'
    end
    if current_user.frags == 'a'
      return @frags = 'Admin'
    end
    if current_user_frags == 't'
      return @frags = 'Teacher'
    end
    if current_user_frags == 'm'
      @frags = 'Moderator'
    end
  end
end
