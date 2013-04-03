module ApplicationHelper

  def current_user
    return session["user"]
  end
  
  def current_userid
    user = current_user
    if user then
      return user[:id]
    else
      return nil
    end
  end
  
  def current_username
    user = current_user
    if user then
      return user[:name]
    else
      return nil
    end
  end
  
  def current_usertype
    user = current_user
    if user then
      return user[:type]
    else
      return nil
    end
  end
  
  def current_teacher
    user = current_user
    if user then
      return user[:type] == "teacher"
    else
      return nil
    end
  end
  
  def current_student
    user = current_user
    if user then
      return user[:type] != "teacher"
    else
      return nil
    end
  end

end
