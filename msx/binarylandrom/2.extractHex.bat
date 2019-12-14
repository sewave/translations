@echo off
set T_FILENAME="TR_Binary Land (1984)(Kuma Computers).rom"
set SCRIPTNAME="binarylandrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 27D7:8,2827:8,264F:8,285F:8,26BF:20
pause
