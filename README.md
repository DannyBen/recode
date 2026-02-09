# Recode - Command line refactoring utility

![repocard](https://repocard.dannyben.com/svg/recode.svg)

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
