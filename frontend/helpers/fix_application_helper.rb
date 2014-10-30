require Rails.root.join('app/helpers/application_helper')

module ApplicationHelper
  
  def clean_mixed_content(content)
    content = content.to_s
    return content if content.blank? 
    MixedContentParser::parse(content, url_for(:root), { :wrap_blocks => false } )
  end

end

