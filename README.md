# clox

A C implementation of the Lox programming language from [Crafting Interpreters](https://craftinginterpreters.com/) by Robert Nystrom.

## Building

```bash
# Debug build (default, includes tracing and GC debugging)
make

# Release build (optimized)
make release

# Clean build artifacts
make clean
```

## Usage

```bash
# Interactive REPL
./clox

# Run a Lox file
./clox script.lox
```


## Reference

This implementation follows Part III of [Crafting Interpreters](https://craftinginterpreters.com/), implementing a bytecode virtual machine with a single-pass compiler.