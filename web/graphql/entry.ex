defmodule TestSchema do
  def schema do
    %GraphQL.Schema{
      query: %GraphQL.Type.ObjectType{
        name: "Hello",
        fields: %{
          greeting: %{
            type: %GraphQL.Type.String{},
            resolve: {TestSchema, :greeting}
          }
        }
      }
    }
  end

  def greeting(_, %{name: name}, _), do: "Hello, #{name}!"
  def greeting(_, _, _), do: "Hello, world!"
end
