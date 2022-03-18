@echo off
set T_FILENAME="TR_Mask III.tzx"
set SCRIPTNAME="maskiiitzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9237:180,23B7:18,B30F:20,B35F:20,B39F:80,B49F:80,B79F:A0
pause
