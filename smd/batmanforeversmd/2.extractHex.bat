@echo off
set T_FILENAME="TR_Batman Forever (W) [!].gen"
set SCRIPTNAME="batmanforeversmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
