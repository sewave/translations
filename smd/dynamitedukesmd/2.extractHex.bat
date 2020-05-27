@echo off
set T_FILENAME="TR_Dynamite Duke (W) [!].bin"
set SCRIPTNAME="dynamitedukesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
