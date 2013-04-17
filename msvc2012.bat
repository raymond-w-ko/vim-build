PUSHD %~dp0
CD ..\vim
C:\cygwin\bin\bash -c "/usr/bin/hg purge --all"
CD src

SET SDK_INCLUDE_DIR=C:\Program Files\Microsoft SDKs\Windows\v7.1\Include
SET VC_DIR="C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC

CALL %VC_DIR%\vcvarsall.bat" x86_amd64

SET VIM_CONFIG_OPTIONS=^
FEATURES=HUGE GUI=yes DIRECTX=yes OLE=yes MBYTE=yes ^
IME=yes DYNAMIC_IME=yes GIME=yes ^
PYTHON=C:\opt\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 ^
SNIFF=yes CSCOPE=yes ICONV=yes GETTEXT=yes POSTSCRIPT=yes ^
NETBEANS=yes ^
CPU=AMD64 OPTIMIZE=MAXSPEED CPUNR=pentium4 WINVER=0x0500 ^
CVARS="/Qpar /Ob2 /Oi /Ot /Oy /GT /GF /GS- /Gy"

nmake -f Make_mvc.mak %VIM_CONFIG_OPTIONS% clean
nmake -f Make_mvc.mak %VIM_CONFIG_OPTIONS%

C:\Windows\System32\xcopy.exe /y /f gvim.exe "C:\Program Files (x86)\Vim\vim73\"
C:\Windows\System32\xcopy.exe /y /f vimrun.exe "C:\Program Files (x86)\Vim\vim73\"
C:\Windows\System32\xcopy.exe /y /f xxd\xxd.exe "C:\Program Files (x86)\Vim\vim73\"

:END
POPD

PAUSE
