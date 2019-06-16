module JoinsHelper

  def check_student
    UserRole.where(user_id: current_user.id).empty? && Join.where(user_id: current_user.id).empty?
  end

  def get_users_name_for_index_action(id)
    User.find_by(id: id).name
  end
end
