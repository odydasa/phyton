@ECHO OFF
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
SET _DataFile=%~f0
SET _parseText=[data]
SET _parseOK=
SET _x=0

CALL :textLenght _parseTextLn "%_parseText%"
FOR /F "usebackq delims=" %%A IN (`TYPE "%_DataFile%"`) DO CALL :ParseData %%A



GOTO :EOF


:ParseData
IF DEFINED _parseOK (
  SET /A _x+=1
)
IF DEFINED _parseOK ECHO %_x%: %*
IF DEFINED _parseOK py %~n0.py %*
IF DEFINED _parseOK (
  ECHO.
  GOTO :EOF
)
SET _tmp=%*
SET _tmp=%_tmp:"=%
SET _tmp=%_tmp:"=%
CALL :run SET _tmp=%%_tmp:~0,%_parseTextLn%%%
IF "%_tmp%"=="%_parseText%" SET _parseOK=OK
GOTO :EOF



:textLenght
IF "%~1"=="" GOTO :EOF
IF "%~2"=="" GOTO :EOF
SET _textLenght=0
:textLenghtLoop
SET /A _textLenght+=1
SET %~1=%~2
CALL :run SET %~1=%%%~1:~0,%_textLenght%%%
CALL :run IF NOT "%%%~1%%"=="%~2" SET %~1=
IF NOT DEFINED %~1 GOTO textLenghtLoop
SET %~1=%_textLenght%
SET _textLenght=
GOTO :EOF

:run
%*
GOTO :EOF





[data]
IRKEMI
BCEARMEA
KENLGSAU
PLUKGAA
WGUBAITNPAH
TAJNIN
LPAA
YNIKTU
CNERKU
RSHEE
LWANUBGANGA
LEKEUK
DLAA
WNGARAHEMB
AAGRM
RTAISE
PLAA
NTSAANPLEAKA
JSAMWAA
ORETL
LGAU
BEAKCRETGINI
BHIAEJAUC
TCBOEADGNE
WGBAANROGNE
WBAANGBMOAYB
UNASADMLA
LTEUMAWKA
JDANURKEU
MUETCKNUI
LSREDIE
UMKTERAB
UCTAO
BEKRIGANCE
PIJRUKEINS
LAMGREHAU
KUCA
ARKPPIA
TNGENKA
