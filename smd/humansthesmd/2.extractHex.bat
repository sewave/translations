@echo off
set T_FILENAME="TR_Humans, The (USA).md"
set SCRIPTNAME="humansthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
