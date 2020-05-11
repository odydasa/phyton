@ECHO OFF
SETLOCAL
SET _x=%~1
IF NOT DEFINED _x SET _x=1
SET _out=%_x%

:loop
IF %_x%==1 GOTO next
SET /A _x -= 1
SET /A _out *= %_x%
GOTO :loop
:next

ECHO Factorial(%~1) = %_out%
ENDLOCAL
GOTO :EOF
