@echo off
set T_FILENAME="TR_Arrow Flash (UE) [!].bin"
set SCRIPTNAME="arrowflashsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
