@echo off
set T_FILENAME="TR_Krusty's Fun House (E) [!].sms"
set SCRIPTNAME="krustysfunhousesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
