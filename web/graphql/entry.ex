# breakup query and mutations into separate modules this module
# will glue everything together and expose the endpoint

defmodule App.PublicSchema do
  def get do
    %GraphQL.Schema{

      query: %GraphQL.Type.ObjectType{
        name: "PublicQueries",
        fields: %{
          greeting: App.Query.Greeting.get,
        }
      },

      #mutation: %GraphQL.Type.ObjectType{
        #name: "PublicMutations",
        #fields: %{
          #save_greeting: App.Mutation.Greeting.get,
        #}
      #}

    }
  end
end
