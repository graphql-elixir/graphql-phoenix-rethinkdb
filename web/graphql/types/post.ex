alias GraphQL.Type.List

defmodule App.Type.Post do
  @type_string %{type: %GraphQL.Type.String{}}

  def get do
    %GraphQL.Type.ObjectType{
      name: "Post",
      fields: %{
        id: @type_string,
        title: @type_string,
        content: @type_string,
        author: %{
          type: App.Type.Author.get,
          resolve: fn (_doc, _args, _) ->
            get_fake_author()
          end
        },
        comments: %{
          type: %List{ofType: App.Type.Comment.get},
          resolve: fn (_doc, _args, _) ->
            get_fake_comments()
          end
        }
      }
    }
  end

  # temp

  defp get_fake_comments do
    # hard coded for now, would find comments by post id
    [ %{id: "c1", text: "First comment", postId: "p1", authorId: "a1"},
      %{id: "c2", text: "Second comment", postId: "p1", authorId: "a1"} ]
  end

  defp get_fake_author do
    # hard coded for now would, query by author id
    %{id: "a1", name: "Allen Jones"}
  end
end
