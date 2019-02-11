@echo off
set T_FILENAME="TR_Cannon Fodder (E) [!].bin"
set SCRIPTNAME="cannonfoddersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
