# Phoenix Benchmark

A simple app to benchmark Phoenix against [common Ruby API frameworks][bench].

## Running

You'll need Elixir installed in order to run this app. 
See [Installing Elixir][ix] for more information.

On macOS using [HomeBrew][brew], you can install it using `brew install elixir`. 

  1. Clone the project
  2. Install dependencies with `mix deps.get`
  3. Start the server with `mix phoenix.server`
  4. Run benchmarks:

     Empty page:
     ```
     wrk -t 2 -c 10 -d 3m -H "Accept: application/json" http://localhost:4000/empty
     ```

     JSON numbers 1-1000:
     ```
     wrk -t 2 -c 10 -d 3m -H "Accept: application/json" http://localhost:4000/numbers/1000
     ```


[bench]: https://github.com/davidcelis/api-benchmarks
[ix]: http://elixir-lang.org/install.html
[brew]: https://brew.sh
