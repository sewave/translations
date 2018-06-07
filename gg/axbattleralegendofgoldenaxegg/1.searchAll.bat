@echo off
set T_FILENAME="Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
set SCRIPTNAME="axbattleralegendofgoldenaxegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 F0 "..\EngDict.txt"
pause
