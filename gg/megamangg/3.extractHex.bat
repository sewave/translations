@echo off
set T_FILENAME="TR_Megaman (U) [!].gg"
set SCRIPTNAME="megamangg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 298C1-299C1,50560-506A0,509C0:20,50DA0:20,48E90-49290,63270-63310,49CEF:20
pause
