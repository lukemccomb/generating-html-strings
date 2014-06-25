class HTMLGenerator

  def initialize(wrapper = "CONTENT")
    @html_layout = wrapper
  end

  def section(content)
    return_text = "<section>#{content}</section>"

    @html_layout.gsub(/CONTENT/, return_text)
  end

  def unordered_list(list_items)
    u_l = "<ul>"
    list_items.each do |list_item|
      u_l << "<li>#{list_item}</li>"
    end
    u_l << "</ul>"

    return u_l if @html_layout == ''

    @html_layout.gsub(/CONTENT/, u_l)
  end

  def button(x, hsh = {})
    button_html = if hsh[:class] == nil
                    "<button>#{x}</button>"
                  else
                    "<button class='#{hsh[:class]}'>#{x}</button>"
                  end
    @html_layout.gsub(/CONTENT/, button_html)
  end


end