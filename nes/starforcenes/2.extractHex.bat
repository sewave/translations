@echo off
set T_FILENAME="TR_Star Force (U) [!].nes"
set SCRIPTNAME="starforcenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B110:100,8C10:100
pause
