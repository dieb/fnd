# fnd

fnd, short for "function daemon", is a daemon program capable of storing
and running ruby code on demand. Think of it as a dynamic API.

## Usage

Run the 'fnd' daemon:

```bash
$ fnd localhost:1234
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

