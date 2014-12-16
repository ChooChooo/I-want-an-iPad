require 'kramdown'

module ApplicationHelper
  def markdown(text)
    Kramdown::Document.new(text).to_html
  end

  def widget(controller, action, params)

    # Sample use: <%= widget(SearchController, :search, { 'search_params' => 'chef' }) %>
    
    c = controller.new
    c.params = params
    c.dispatch(action, request)
    render text: raw(c.response.body)
  end
end
