defmodule Benchmark.PageController do
  use Benchmark.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
