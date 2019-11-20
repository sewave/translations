@echo off
set T_FILENAME="TR_Slap Fight (J) [c][!].bin"
set SCRIPTNAME="slapfightsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DE520:20,DEB20:20,DF120:20,DF200:C00,BE520:20,BEB20:20,BF120:20,BF200:C00
pause
