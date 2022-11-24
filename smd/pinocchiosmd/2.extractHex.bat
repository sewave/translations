@echo off
set T_FILENAME="TR_Pinocchio (USA).md"
set SCRIPTNAME="pinocchiosmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
