module PostsHelper
  def choose_new_or_edit
    if ["new", "confirm", "create"].include?(action_name)
      confirm_posts_path
    elsif action_name == "edit"
      post_path
    end
  end
end
