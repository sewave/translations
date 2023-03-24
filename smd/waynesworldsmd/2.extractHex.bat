@echo off
set T_FILENAME="TR_Wayne's World (USA).md"
set SCRIPTNAME="waynesworldsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
