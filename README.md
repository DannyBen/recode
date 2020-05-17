# Recode - Command line refactoring utility

[![Gem Version](https://badge.fury.io/rb/recode.svg)](https://badge.fury.io/rb/recode)
[![Build Status](https://github.com/DannyBen/recode/workflows/Test/badge.svg)](https://github.com/DannyBen/recode/actions?query=workflow%3ATest)
[![Maintainability](https://api.codeclimate.com/v1/badges/5e766a4651a7320f714f/maintainability)](https://codeclimate.com/github/DannyBen/recode/maintainability)

---

![Demo](/demo/cast.svg)

---

## Installation

    $ gem install recode


## Usage

```
$ recode --help
Code Refactoring Utility

Usage:
  recode OLD [to] NEW [in] EXTENSIONS... [options]
  recode (-h|--help)

Options:
  -a --apply
    Apply changes

  -p --prompt
    Apply changes interactively

  -h --help
    Show this help

Parameters:
  OLD
    Old string, singular and capitalized

  NEW
    New string, singular and capitalized

  EXTENSIONS
    Space delimited file extensions

Examples:
  recode Member User rb
  recode Member to User in rb js
  recode Member to User in rb js --apply
  recode Member to User in rb js -p
```

## Contributing / Support

If you experience any issue, have a question or a suggestion, or if you wish
to contribute, feel free to [open an issue][issues].

---

[issues]: https://github.com/DannyBen/recode/issues
