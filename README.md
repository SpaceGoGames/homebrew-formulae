# homebrew-formulae

Collection of Homebrew Formulae

## How do I install these formulae?

`brew install SpaceGoGames/formulae/<formula>`

Or `brew tap SpaceGoGames/formulae` and then `brew install <formula>`.

## Testing your formulae

When tinkeriung with your formula you should ensure all works as expected. So to install from a local formula just go to the root of the tap and install it from source.

```shell
brew install --build-from-source Formula/<my_formula.rb>
```

Once you are good to go ensure to uninstall your local formula with `bew uninstall`

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
