@echo off
set T_FILENAME="TR_Pop 'N TwinBee (E) [!].gb"
set SCRIPTNAME="popntwinbeegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 103A1:30,104A9:30,111D8:10
pause
