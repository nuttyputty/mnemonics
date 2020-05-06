# mnemonic

Package for generating four letter Mnemonics

## Installing

Add the following to your `pubspec.yaml` file:

    dependencies:
      mnemonic:
        git:
          url: git@github.com:nuttyputty/mnemonics.git
          ref: master        

Make sure your SSH key is uploaded to Github otherwise you will not be able to download this package.

## Use

There are two classes in this package, `Mnemonic` and `MnemonicDisplay`.

The first class will automatically generate a new mnemonic for you and the second presents a standardized was to render that mnemonic in Flutter.

The MnemonicDisplay widget will respect your app's current theme.

