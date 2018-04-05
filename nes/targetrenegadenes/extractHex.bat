@echo off 
set T_FILENAME="TR_Target - Renegade (U) [!].nes"
set SCRIPTNAME="targetrenegadenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20330-2052F
pause 
