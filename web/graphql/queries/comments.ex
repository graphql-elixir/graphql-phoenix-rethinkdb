alias GraphQL.Type.List

defmodule App.Query.Comments do
  def get do
    %{
      type: %List{ofType: App.Type.Comment.get},
      resolve: fn (_, _args, _) ->
        [ %{id: "c1", text: "Hello", postId: "p1", authorId: "a1"} ]
      end
    }
  end
end
