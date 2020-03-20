class Todo < ActiveRecord::Base
  def to_pleasent_string
    if completed == true
      mark_completed = "[x]"
      "#{id}. #{mark_completed} #{todo_text} #{due_date}"
    else
      mark_not_completed = "[ ]"
      "#{id}. #{mark_not_completed} #{todo_text} #{due_date}"
    end
  end
end
