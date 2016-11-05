defmodule Benchmark.Router do
  use Benchmark.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Benchmark do
    pipe_through :api

    get "/empty", BenchmarkController, :empty
    get "/numbers/:count", BenchmarkController, :numbers
  end
end
