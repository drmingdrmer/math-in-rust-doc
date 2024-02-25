# Add math to rust doc, e.g., docs.rs

This repo shows how to add latex math to https://docs.rs;
Math is rendered by [katex](https://katex.org/).

## How it works

It embeds a piece of html into the rust doc that contains a javascript snippet
rendering latex math.

## Usage

- To build doc with math locally: `make`
    Or: `RUSTDOCFLAGS="--html-in-header katex.html" cargo doc --no-deps`

- To build doc with math for docs.rs, add the following lines to `Cargo.toml`:
    ```toml
    [package.metadata.docs.rs]
    rustdoc-args = [ "--html-in-header", "katex.html" ]
    ```

## Rendering options

This repo provides two snippet for rendering:

- `katex.html` renders ``$`i+1`$`` into inline math, and math code block such into math block:
    ````markdown
    ```math
    i+1
    ```
    ````

- `katex-dollar.html` renders `$i+1$` into inline math, and `$$i+1$$` into block
    math.

Each of these two files is about `257 KB` in size.
And non-packed versions are `*-src.html`.


