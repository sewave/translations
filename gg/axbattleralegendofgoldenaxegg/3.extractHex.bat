@echo off
set T_FILENAME="TR_Ax Battler - A Legend of Golden Axe (U) (V2.4) [!].gg"
set SCRIPTNAME="axbattleralegendofgoldenaxegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
