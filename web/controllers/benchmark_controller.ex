defmodule Benchmark.BenchmarkController do
  use Benchmark.Web, :controller

  def empty(conn, _params) do
    json conn, ""
  end

  def numbers(conn, %{"count" => count}) do
    json conn, 1..String.to_integer(count)
  end
end
