module Page
  def page_title(separator = '|', site_title = meta[:title])
    return site_title if is_active_page?('/index.html')
    "#{current_page.data.title} #{separator} #{site_title}"
  end
end
