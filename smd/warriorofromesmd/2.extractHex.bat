@echo off
set T_FILENAME="TR_Warrior of Rome (USA).md"
set SCRIPTNAME="warriorofromesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
