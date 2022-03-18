@echo off
set T_FILENAME="TR_Warrior of Rome II (USA).md"
set SCRIPTNAME="warriorofromeiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F5000:400
pause
