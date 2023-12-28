@echo off
set T_FILENAME="TR_Prince of Persia (USA).sfc"
set SCRIPTNAME="princeofpersiasfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20914:300,206C4:50,208C4:30
pause
