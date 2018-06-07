@echo off
set T_FILENAME="TR_Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
set S_FILENAME="Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
set SCRIPTNAME="axbattleralegendofgoldenaxegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
