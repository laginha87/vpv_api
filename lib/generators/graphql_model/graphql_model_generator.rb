class GraphqlModelGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)
  def invoke_graphql
    model = class_name.classify.constantize
    columns = model.columns.reject { |e| e.name.ends_with?("id") }.map { |e| [e.name, translate_type(e.type)] }
    relations = model.reflect_on_all_associations.map { |e|
      has_many = e.class == ActiveRecord::Reflection::HasManyReflection
      [e.name, has_many ? "[#{e.name.to_s.singularize}]" : e.name]
    }
    attrs = columns + relations << ["id", "ID"]
    attrs = attrs.map { |e| e.join(":") }.join(" ")
    generate "graphql:object", "#{class_name} #{attrs}"
  end

  private

  def translate_type(type)
    {
      datetime: "date_time",
    }.fetch(type) { |t| t }
  end
end
