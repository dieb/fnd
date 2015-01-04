# fnd

fnd, short for "function daemon", is a daemon program capable of storing
and running ruby code on demand. Think of it as a dynamic API.

## How it Works

Consider the following greeting code:

```ruby
# say_hello.rb
"Hello #{name}"
```

Upload it to the daemon:

```bash
$ fn upload say_hello.rb --to localhost:1234
```

Now the code can be invoked through a public API:

    $ curl -d "{\"name\":\"Andre\"}" http://localhost:1234/say_hello -H "Content-type: application/json"
    Hello Andre



## Installation

```bash
$ gem install fnd
```

fnd also has a Docker image [dieb/fnd](https://registry.hub.docker.com/u/dieb/fnd/) for
quickly running the daemon.

```bash
$ docker pull dieb/fnd
```

## Usage

Run the 'fnd' daemon:

```bash
$ fnd
[2015-01-04 01:04:55] INFO  WEBrick 1.3.1
[2015-01-04 01:04:55] INFO  ruby 2.0.0 (2014-01-12) [x86_64-linux-gnu]
[2015-01-04 01:04:55] INFO  WEBrick::HTTPServer#start: pid=1 port=8080
```

Or if you prefer through Docker:

```bash
$ docker run --rm -ti -p 8080:8080 dieb/fnd
[2015-01-04 01:04:55] INFO  WEBrick 1.3.1
[2015-01-04 01:04:55] INFO  ruby 2.0.0 (2014-01-12) [x86_64-linux-gnu]
[2015-01-04 01:04:55] INFO  WEBrick::HTTPServer#start: pid=1 port=8080
```

## License

MIT License. See [LICENSE](https://github.com/dieb/fnd/blob/master/LICENSE) for details.

## Copyright

Copyright (c) 2014-2015 André Dieb Martins
