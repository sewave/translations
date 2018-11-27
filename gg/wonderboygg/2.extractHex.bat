@echo off
set T_FILENAME="TR_Wonder Boy (E) [!].gg"
set SCRIPTNAME="wonderboygg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EC00:C0,1EF80:C0,1FAA0:140
pause
