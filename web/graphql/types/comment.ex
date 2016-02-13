defmodule App.Type.Comment do
  @type_string %{type: %GraphQL.Type.String{}}

  def get do
    %GraphQL.Type.ObjectType{
      name: "Comment",
      description: "Blog post comment",
      fields: %{
        id: @type_string,
        text: @type_string,
        post_id: @type_string,
        author_id: @type_string,
        author: %{
          type: App.Type.Author.get,
          resolve: fn (_doc, _args, _) ->
            # hard coded for now would query by doc.author_id
            %{id: "323", name: "Jim Smith"}
          end
        }
      }
    }
  end
end
