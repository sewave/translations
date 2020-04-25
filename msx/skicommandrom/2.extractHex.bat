@echo off
set T_FILENAME="TR_Ski Command (1984)(Casio).rom"
set SCRIPTNAME="skicommandrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3924:8
pause
