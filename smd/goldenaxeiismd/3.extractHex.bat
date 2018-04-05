@echo off
set T_FILENAME="TR_Golden Axe II (W) [!].bin"
set SCRIPTNAME="goldenaxeiismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
