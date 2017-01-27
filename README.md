# How To Run

## install VSCode and stack

install [VSCode](https://code.visualstudio.com/)

install [stack](https://github.com/commercialhaskell/stack/releases/)

## add Path to ghc to your system

you can find path to ghc at last line of following command

```bash
stack path
//
//
ghc-paths: %userprofile%\AppData\Local\Programs\stack\x86_64-windows
```

and add to path for your pc 

```
%userprofile%\AppData\Local\Programs\stack\x86_64-windows\ghc-ghc_version*bin
``` 

*see your own folder

## Open this project in VSCode

right click this folder and click "Open with Code" or open from VSCode menu `file` > `open`.

if you did not install extention for this project you can find messages top of VSCode window for recommend extentions and install them.


## run sample program

open `/app/Main.hs` on VSCode and run compile command with runner `ctl`+`shift`+`r`.

# Detail of this project

I only trace this article.

http://azaika.hateblo.jp/entry/2015/12/19/151554

haskell sample is written in here

http://qiita.com/7shi/items/145f1234f8ec2af923ef

enjoy haskell!