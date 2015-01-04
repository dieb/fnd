# fnd

fnd, short for "function daemon", is a daemon program capable of storing
and running ruby code on demand. Think of it as a dynamic API.

## Usage

Run the 'fnd' daemon:

```bash
$ fnd --listen localhost:1234
Listening on 1234...
```

For instance, consider the following code:

```ruby
# say_hello.rb
"Hello #{name}"
```

Upload it to the daemon:

    $ fn upload say_hello.rb --to localhost:1234

Now the code can be invoked through a public API:

    $ curl -d "{\"name\":\"Andre\"}" http://localhost:1234/say_hello -H "Content-type: application/json"
    Hello Andre


## Running on Docker

fnd has a Docker image [dieb/fnd][https://registry.hub.docker.com/u/dieb/fnd/] for quickly
running the daemon.

To run it:

```bash
$ docker run --rm -ti -p 8080:8080 dieb/fnd
```

## License

MIT License. See [LICENSE][https://github.com/dieb/fnd/blob/master/LICENSE] for details.

## Copyright

Copyright (c) 2014-2015 André Dieb Martins
