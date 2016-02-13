alias GraphQL.Type.List

defmodule App.Query.Posts do
  def get do
    %{
      type: %List{ofType: App.Type.Post.get},
      resolve: fn (_, _args, _) ->
        get_fake_posts()
      end
    }
  end

  defp get_fake_posts do
    [ %{id: "p1", title: "First Post", content: "Foo", author_id: "a1"},
      %{id: "p2", title: "Second Post", content: "Bar", author_id: "a1"} ]
  end
end
