@echo off
set T_FILENAME="TR_Deep Duck Trouble Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="ddtroublegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
