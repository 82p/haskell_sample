@echo off

chcp 65001 > nul

if "%~dpnx1" equ "" goto :eof

stack runghc "%~dpnx1"
