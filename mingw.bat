@echo off
pushd %~dp0

set PATH=C:\MinGW32\bin;C:\Perl\bin
mingw32-make -f Make_ming.mak clean
mingw32-make -f Make_ming.mak
strip --strip-all gvim.exe
strip --strip-all vimrun.exe
strip --strip-all xxd\xxd.exe

C:\Windows\System32\xcopy.exe /y /f gvim.exe "C:\Program Files (x86)\Vim\vim73\"
C:\Windows\System32\xcopy.exe /y /f vimrun.exe "C:\Program Files (x86)\Vim\vim73\"
C:\Windows\System32\xcopy.exe /y /f xxd\xxd.exe "C:\Program Files (x86)\Vim\vim73\"
