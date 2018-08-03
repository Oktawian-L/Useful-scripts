echo Budowanie bazy Firebird
@echo off
set GBAK="C:\Program Files (x86)\Firebird\Firebird_2_5\bin\gbak.exe"
set BDIR=C:\auto_skrypty\odgbak\%DATE%
set BLIST=C:\auto_skrypty\lista_baz2.txt
set USER=sysdba
set PASS=masterkey

mkdir %BDIR% 
@echo Kopia z dnia: %DATE% >> %BDIR%\kopia.log

FOR /F %%i IN (%BLIST%) DO (
@echo on
echo Kopia: %%i >> %BDIR%\kopia.log
@echo off
%GBAK% -c -v -user %USER% -pas %PASS% %%i %BDIR%\%%~nxi.FDB -y %BDIR%\%%~nxi.LOG 2>>%BDIR%\kopia.log
)

echo OLasek (C^) 2018
set /p DUMMY=Zrobione, Hit ENTER to continue...