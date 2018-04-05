@echo off
set T_FILENAME="TR_Punisher, The (U) [!].bin"
set SCRIPTNAME="punishersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
