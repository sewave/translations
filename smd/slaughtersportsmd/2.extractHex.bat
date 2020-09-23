@echo off
set T_FILENAME="TR_Slaughter Sport (USA).md"
set SCRIPTNAME="slaughtersportsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3CD04:20,96BE6:40,96D26:40,91C6C:800
pause
