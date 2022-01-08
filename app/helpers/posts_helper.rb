module PostsHelper
  def choose_new_or_edit(modal)
    if modal || ["new", "confirm", "create"].include?(action_name)
      confirm_posts_path
    elsif action_name == "edit"
      post_path
    end
  end

  def post_new_or_exist(modal, post)
    if modal
      Post.new
    else
      post
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

  def strftime_jp(time)
    time.strftime("%R・%Y年%m月%d日")
  end


end
