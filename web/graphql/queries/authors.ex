alias GraphQL.Type.List

defmodule App.Query.Authors do
  def get do
    %{
      type: %List{ofType: App.Type.Author.get},
      resolve: fn (_, _args, _) ->
        [ %{id: "323", name: "Jim Smith"}, %{id: "123", name: "Mary Ann"} ]
      end
    }
  end
end
