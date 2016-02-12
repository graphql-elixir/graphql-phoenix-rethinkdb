defmodule App.Query.Greeting do
  def get do
    %{
      # types should be broken out into a module too
      # but this example is too simple to justify that
      type: %GraphQL.Type.String{},
      resolve: fn (_, _args, _) ->
        "Hello World"
      end
    }
  end
end
