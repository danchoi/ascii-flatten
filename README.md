# ascii-flatten

This simple library provides a function to flatten non-ASCII European
characters into the nearest US-ASCII equivalent.

Hackage package: http://hackage.haskell.org/package/ascii-flatten

See source for `Data.Char.AsciiFlatten` for the character conversions.

The character translation table is derived from this URL:
http://yob.id.au/2008/05/08/thinking-sphinx-and-unicode.html

## Usage

```haskell
:m + Data.Char.AsciiFlatten
ghci> map asciiFlatten "café"
"cafe"
ghci> map asciiFlatten "Übermensch"
"Ubermensch"
```

When performance matters, use 

    Data.Text.map :: (Char -> Char) -> Text -> Text

## Command line usage

The package also installs a simple command line tool named `ascii-flatten` for
use from the command line and in shell scripts:

    $ echo café | ascii-flatten
    cafe


## Code generation

The code for this package is generated using the `build.sh` script in the
project directory.

