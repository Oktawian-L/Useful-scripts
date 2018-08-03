echo Kopiowanie bazy Firebird
@echo off
set GBAK="C:\Program Files (x86)\Firebird\Firebird_2_5\bin\gbak.exe"
set BDIR=C:\auto_skrypty\%DATE%
set BLIST=C:\auto_skrypty\lista_baz.txt
set USER=sysdba
set PASS=masterkey

mkdir %BDIR% 
@echo Kopia z dnia: %DATE% >> %BDIR%\kopia.log

FOR /F %%i IN (%BLIST%) DO (
@echo on
echo Kopia: %%i >> %BDIR%\kopia.log
@echo off
%GBAK% -t -v -user %USER% -pas %PASS% %%i %BDIR%\%%~nxi.FBK -y %BDIR%\%%~nxi.LOG 2>>%BDIR%\kopia.log
)

echo OLasek (C^) 2018
set /p DUMMY=Hit ENTER to continue...