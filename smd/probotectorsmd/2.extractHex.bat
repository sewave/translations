@echo off
set T_FILENAME="TR_Probotector (Europe) (En,Fr,De).md"
set SCRIPTNAME="probotectorsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 129800:800
pause
