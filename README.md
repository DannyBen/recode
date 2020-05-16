# Recode - Command line refactoring utility

[![Gem Version](https://badge.fury.io/rb/recode.svg)](https://badge.fury.io/rb/recode)
[![Build Status](https://github.com/DannyBen/recode/workflows/Test/badge.svg)](https://github.com/DannyBen/recode/actions?query=workflow%3ATest)
[![Maintainability](https://api.codeclimate.com/v1/badges/5e766a4651a7320f714f/maintainability)](https://codeclimate.com/github/DannyBen/recode/maintainability)

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
  recode refactor Member User rb
  recode refactor Member to User in rb js
  recode refactor Member to User in rb js --apply
  recode refactor Member to User in rb js -p
```