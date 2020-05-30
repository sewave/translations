@echo off
set T_FILENAME="TR_X-Men - Gamemaster's Legacy (U) [!].gg"
set SCRIPTNAME="xmengamemasterslegacygg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3AE7C:20,1B7B1:300
pause
