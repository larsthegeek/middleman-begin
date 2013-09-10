module Navigation
  def is_active_page?(url)
    current_page.url == url_for(url)
  end

  # Wraps around Padrino's content_tag, additionally taking a url to check
  # the current page against. If the current page matches the given url,
  # the 'active' class is applied to the tag.
  def active_tag(name, url, content = nil, options = nil, &block)
    if block_given?
      options = content if content.is_a?(Hash)
      content = capture_html(&block)
    end

    if is_active_page?(url)
      options ||= {}
      active_class = 'active'

      if options[:class].nil?
        options[:class] = active_class
      else
        options[:class] += " #{active_class}"
      end
    end

    content_tag(name, content, options, &block)
  end
end
