@echo off
set T_FILENAME="X-Men - Gamemaster's Legacy (U) [!].gg"
set SCRIPTNAME="xmengamemasterslegacygg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
