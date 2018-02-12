module ApplicationHelper
  def full_title (page_title)
    @base_title = "Is It Open?"
    if page_title.empty?
      @base_title
    else
      page_title + " | " + @base_title
    end
  end
  def fill_database(table_class, *symbols)
    table table_class.create
    symbols.each do |sym|
      table.update(sym => params[sym])
    end
    table
  end
end
