@echo off

if "%~dpnx1" equ "" goto :eof

setlocal
set tempfile=%date:~4%%time::=%
set tempfile=%tempfile:/=%
set tempfile=%tempfile:.=%
set tempfile=%tempfile: =%
ghc -o %tempfile%.exe --make "%~dpnx1" -outputdir "tmp"
%tempfile%.exe
del %tempfile%.exe
rd /s /q "tmp"
endlocal