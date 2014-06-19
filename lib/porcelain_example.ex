defmodule PorcelainExample do
  use Application

  def start(_, _) do
    input = "b\nd\nf\na\nc\n"
    IO.write """
    Launching external program:
      sort

    Input:
    #{input}
    Output:
    """
    Porcelain.exec("sort", [], in: input, out: IO.stream(:stdio, :line))
    {:ok, self()}
  end
end
