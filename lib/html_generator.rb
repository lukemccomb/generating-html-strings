class HTMLGenerator

  def initialize( text = "" )
    # if text != nil
    #   text.sub("CONTENT", " ").split(" ")
    #   @first_tag = text[0]
    #   @second_tag = text[1]
    # else
    #
    # end
  end

  def section(text)
    @section = "<section>#{text}</section>"
  end

  def unordered_list(list_items)
    u_l = "<ul>"
    list_items.each do |list_item|
      u_l << "<li>#{list_item}</li>"
    end
    u_l << "</ul>"
  end

  def button(x, hsh = {})
    if hsh[:class] == nil
      "<button>#{x}</button>"
    else
      "<button class='#{hsh[:class]}'>#{x}</button>"
    end
  end



end