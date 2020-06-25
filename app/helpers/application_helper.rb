module ApplicationHelper

  def meta_tag(tag, text)
    content_for :"meta_#{tag}", text
  end


end
