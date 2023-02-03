# Rust Hello World

In this example we will deploy a simple devcontainer with rust.

## Usage

To build the container to test locally:

```bash
$ docker build -t tutorial .
```

And run the container locally (using default password):

```bash
$ docker run -it -p 3000:3000 tutorial
```

To go directly to the tutorial, you can open your browser to [http://127.0.0.1:3000/?folder=/home/rustdev/tutorial](http://127.0.0.1:3000/?folder=/home/rustdev/tutorial).
You can also open your host to [127.0.0.0:3000](http://127.0.0.0:3000) and then open the tutorial by
opening the folder at `/home/rustdev/tutorial` and starting at the README.md.

## Desired Improvements

 - [ ] start with workplace open
 - [ ] test out adding ssl
 - [ ] config file? https://coder.com/docs/code-server/latest/FAQ#how-does-the-config-file-work
