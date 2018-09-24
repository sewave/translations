@echo off
set T_FILENAME="TR_Golden Axe (W) (REV01) [!].bin"
set SCRIPTNAME="goldenaxesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
