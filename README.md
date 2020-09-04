# Learning-Rust with Rust-Examples

Learn Rust with examples.

### Using

If you'd like to read Rust by Example, you can visit https://doc.rust-lang.org/rust-by-example/ to read it online.

If you'd like to read it locally, install Rust, and then:

$ git clone https://github.com/rust-lang/rust-by-example
$ cd rust-by-example
$ cargo install mdbook
$ mdbook build
$ mdbook serve
To be able to run the examples, you must be connected to the internet; you can read all content offline, however!

### Why Rust ?

Answer by [StackOverflow Blog](https://stackoverflow.blog/2020/01/20/what-is-rust-and-why-is-it-so-popular/)

##### Coming from dynamically-typed languages

The arguments between programmers who prefer dynamic versus static type systems are likely to endure for decades more, but it’s hard to argue about the benefits of static types. You only need to look at the rise of languages like TypeScript or features like Python’s type hints as people have become frustrated with the current state of dynamic typing in today’s larger codebases. Statically-typed languages allow for compiler-checked constraints on the data and its behavior, alleviating cognitive overhead and misunderstandings.

This isn’t to say that all static type systems are equivalent. Many statically-typed languages have a large asterisk next to them: they allow for the concept of NULL. This means any value may be what it says or nothing, effectively creating a second possible type for every type. Like Haskell and some other modern programming languages, Rust encodes this possibility using an optional type, and the compiler requires you to handle the None case. This prevents occurrences of the dreaded TypeError: Cannot read property 'foo' of null runtime error (or language equivalent), instead promoting it to a compile time error you can resolve before a user ever sees it. Here’s an example of a function to greet someone whether or not we know their name; if we had forgotten the None case in the match or tried to use name as if it was an always-present String value, the compiler would complain.


##### Coming from garbage-collected languages

One of the biggest benefits of using a systems programming language is the ability to have control over low-level details.

Rust gives you the choice of storing data on the stack or on the heap and determines at compile time when memory is no longer needed and can be cleaned up. This allows efficient usage of memory as well as more performant memory access. Tilde, an early production user of Rust in their Skylight product, found they were able to reduce their memory usage from 5GiB to 50MiB by rewriting certain Java HTTP endpoints in idiomatic Rust. Savings like this quickly add up when cloud providers charge premium prices for increased memory or additional nodes.