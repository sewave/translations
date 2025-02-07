@echo off
set T_FILENAME="TR_Tutankham (USA).col"
set SCRIPTNAME="tutankhamcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2A38:100
pause
