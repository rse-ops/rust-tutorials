# Rust Hello World Tutorial

Once you've opened this tutorial in `/home/rustdev/tutorial`, you can click the
ellipsis in the top left, Terminal -> New Terminal to open a terminal console.
First, let's get familiar with rust. `rustc` is our compiler, and is already
installed:

```bash
$ which rustc
```
```consoole
/home/rustdev/.cargo/bin/rustc
```

The directory structure is for a typical rust project:

```bash
$ ls
```
```console
Cargo.lock  Cargo.toml  src
```

The content in `src` is our application! Let's build it.

```bash
$ cargo build
```

The binaries you build are then in `target`, e.g.,:

```bash
$ ./target/debug/rust-hello-world 
Hello Dinosaur!
```

or you can run it directly:

```bash
$ cargo run
    Finished dev [unoptimized + debuginfo] target(s) in 0.00s
     Running `target/debug/rust-hello-world`
Hello Dinosaur!
```
