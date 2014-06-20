module ApplicationHelper
  def link_projects_tools_add(name, f)
    projects_tool = f.object.class.reflect_on_association(:projects_tools).klass.new
    fields = f.fields_for(:projects_tools, projects_tool, :child_idex => "new_#{:projects_tools}") do |builder|
      render('/shared/_projects_tools_fields.html.erb', :f => builder)
    end
    link_to_function(name, h("add_fields(this, \"#{:projects_tools}\", \"#{escape_javascript(fields)}\")"))
  end
end
