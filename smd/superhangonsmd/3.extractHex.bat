@echo off
set T_FILENAME="TR_Super Hang-On (W) (REV01) [!].bin"
set SCRIPTNAME="superhangonsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
