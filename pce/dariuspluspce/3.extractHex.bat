@echo off
set T_FILENAME="TR_Darius Plus (J) (SGX).pce"
set SCRIPTNAME="dariuspluspce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
