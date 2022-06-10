@echo off
set T_FILENAME="TR_Golden Axe III (Japan).md"
set SCRIPTNAME="goldenaxeiiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
