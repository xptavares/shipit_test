module UsersHelper
  def min_user_token user
    user.token.present? ? user.token.last(4) : ""
  end
end
