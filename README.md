# fnd

fnd, short for "function daemon", is a daemon program capable of storing
and running ruby code on demand. Think of it as a dynamic API.

## How it works

Consider the following Ruby code:

```ruby
# say_hello.rb
"Hello #{name}"
```

You can upload it to the fnd daemon by running:

```bash
$ fn upload say_hello.rb --to localhost:8080
```

Once uploaded, the daemon loads your code and hosts it through a HTTP API.
For instance, you can invoke it from the command-line with:

```bash
$ curl -d "{\"name\":\"fnd\"}" http://localhost:8080/say_hello -H "Content-type: application/json"
Hello fnd
```

## Installation

```bash
$ gem install fnd
```

Alternatively use our Docker image [dieb/fnd](https://registry.hub.docker.com/u/dieb/fnd/):

```bash
$ docker pull dieb/fnd
```

## Usage

Run the fnd daemon:

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
