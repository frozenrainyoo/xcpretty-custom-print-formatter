# XCPretty Formatter

Custom formatter for [xcpretty](https://github.com/supermarin/xcpretty) with some syntactic sugar for presentation on Jenkins output.

## Installation

This formatter is distributed via RubyGems, and depends on a version of `xcpretty` >= 0.0.7 (when custom formatters were introduced). Run:

    gem install xcpretty-custom-print-formatter

## Usage

Specify `xcpretty-custom-print-formatter` as a custom formatter to `xcpretty`:

```bash
#!/bin/bash

xcodebuild | xcpretty -f `xcpretty-custom-print-formatter`
```

## How it works

The `--formatter` option takes a file path as an argument, which is returned by the `xcpretty-custom-print-formatter` binary. It must be evaluated before the xcpretty arguments are evaluated, hence the backtick wrapping. The specified file must return a Ruby subclass of `XCPretty::Formatter`, which will then receive `formatter_*` method invocations as the build output is parsed.
