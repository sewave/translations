@echo off
set T_FILENAME="TR_Steel Empire, The (UE) [!].bin"
set SCRIPTNAME="steelempirethesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
