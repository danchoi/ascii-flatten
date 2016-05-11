# ascii-flatten

This simple library provides a function to flatten non-ASCII European
characters into nearest US-ASCII equivlent.

Hackage package: http://hackage.haskell.org/package/ascii-flatten-0.1.0.0

See source for `Data.Char.AsciiFlatten` for the character conversions.

The character translation table is derived from this URL:
http://yob.id.au/2008/05/08/thinking-sphinx-and-unicode.html

## Usage

```haskell
:m + Data.Char.AsciiFlatten
...
Ok, modules loaded: Data.Char.AsciiFlatten, Main.
ghci> :m + Data.Char.AsciiFlatten 
ghci> map asciiFlattenCI "café"
"cafe"
ghci> map asciiFlattenCI "Übermensch"
"ubermensch"
```

Note that currently, all characters are flattened to lower case ASCII, because
my source data only as case-insensitive mappings to lowercase ascii
characters. If anyone wants to contribute case-sensitive conversion code
mappings, please do.

When performance matters, use 

    Data.Text.map :: (Char -> Char) -> Text -> Text

## Command line usage

The package also installs a simple command line tool named `ascii-flatten` for
use from the command line and in shell scripts:

    $ echo café | ascii-flatten
    cafe


## Code generation

The code for `asciiFlatten` is generated using the `build.sh` script in the
project directory.

