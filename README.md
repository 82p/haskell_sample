# About
Sample of haskell with VSCode and stack.

# How To Run

## install VSCode and stack

install [VSCode](https://code.visualstudio.com/)

install [stack](https://github.com/commercialhaskell/stack/releases/)

## Open this project in VSCode

```sh
git clone https://github.com/82p/haskell_sample.git
code ./haskell_sample
```

if you did not install extention for this project you can find messages top of VSCode window for recommend extentions and install them.

## run sample program

You need compile my libraries if you want to use them.

```sh
stack build
```

See haskellsamole.cabal. You can find my libraries there.

```cabal
  ...
  exposed-modules:     Lib,
                       Rot13,
                       MySort
  ...
```

Finally open `/app/Main.hs` on VSCode and run compile command with runner `ctl`+`shift`+`r`.

# Detail of this project

## Refferences

http://azaika.hateblo.jp/entry/2015/12/19/151554

I change runhaskell.bat to use stack runhaskell.
this bat file only do `runhaskell x.hs`!

haskell traning sample is written in here (japanese)

http://qiita.com/7shi/items/145f1234f8ec2af923ef

enjoy haskell!