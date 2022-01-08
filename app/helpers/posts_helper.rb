module PostsHelper
  def choose_new_or_edit
    if ["new", "confirm", "create", "index"].include?(action_name)
      confirm_posts_path
    elsif action_name == "edit"
      post_path
    end
  end

  def modified_time_ago_in_words(time)
    secs = (Time.zone.now - time).round
    days = secs / (60 * 60 * 24)
    hours = secs / (60 * 60)
    mins = secs / 60
    if !days.zero?
      time.strftime("%m月%d日")
    elsif !hours.zero?
      "#{hours}時間"
    elsif !mins.zero?
      "#{mins}分"
    else
      "#{secs}秒"
    end
  end

end
