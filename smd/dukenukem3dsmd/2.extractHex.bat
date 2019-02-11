@echo off
set T_FILENAME="TR_Duke Nukem 3D (B) [!].bin"
set SCRIPTNAME="dukenukem3dsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
