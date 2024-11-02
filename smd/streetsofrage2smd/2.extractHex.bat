@echo off
set T_FILENAME="TR_Streets of Rage 2 (USA).md"
set SCRIPTNAME="streetsofrage2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 32040:20,320E0:20,321E0:20,323E0:20,32760:20,32B60:80
pause
