@echo off
set T_FILENAME="TR_Evolution (1983) (Sydney).col"
set SCRIPTNAME="evolutioncol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
