@echo off
set T_FILENAME="TR_Izzy's Quest for the Olympic Rings (USA).sfc"
set SCRIPTNAME="izzysquestfortheolympicringssfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 169C80:300
pause
