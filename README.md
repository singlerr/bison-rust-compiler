# bison-rust-compiler
Rust compiler implementation using Bison

---

[Grammar Reference](https://doc.rust-lang.org/reference/introduction.html)

Some migrations on implementing Rust Grammar to Bison

1. Optional
    - Any non-terminal or terminal symbols annotated by `?` are optional
    - Implement by following techinque:
        ```
            // e.g. Example rule from Rust Grammar rules:
            A:
                B? C
            // are converted to:
            A:
                OptB C
            OptB:
                %empty
                | B
        ```
    - Note that B and C are non-terminal or terminal symbols
2. Closure:
    - Any non-terminal or terminal symbols annotated by `*` are closure
    - These symbols are repeated 0 or more
    - Implement by following techinque
        ```
        // e.g. Example rule from Rust Grammar rules:
        A:
            B*
        // are converted to:
        A:
            ClosureB
        ClosureB:
            %empty
            | B ClosureB
        ```
    - Note that B could be a single symbol or series of symbols
