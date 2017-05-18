defmodule HelloWorld do
  @moduledoc """
  Elixir counts the number of arguments as part of the function name.
  For instance;

      def hello() do
      end

  would be a completely different function from

      def hello(name) do
      end

  Can you find a way to make all the tests pass with just one
  function?

  Hint: look into argument defaults here:
  http://elixir-lang.org/getting-started/modules-and-functions.html#default-arguments
  """

  @doc """
  Greets the user by name, or by saying "Hello, World!"
  if no name is given.
  """
  @spec hello(String.t) :: String.t
  def hello(name \\ nil) do
    # Using pattern matching. Although this works, seems like a hack
    case {:value, name} do
      {:value, nil} -> "Hello, World!"
      {:value, name} -> "Hello, #{name}!"
    end

    # Using non-elixir way using if-else
#    if name do
#      "Hello, #{name}!"
#     else
#       "Hello, World!"
#    end
  end
end
