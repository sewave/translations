@echo off
set T_FILENAME="TR_Ghostbusters (W) (REV01) [!].bin"
set SCRIPTNAME="ghostbusterssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
