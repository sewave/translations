@echo off
set T_FILENAME="TR_Terra Cresta (U) [!].nes"
set SCRIPTNAME="terracrestanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex D360:400,91F0:10,8230:10,9070:10
pause
