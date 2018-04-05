@echo off
set T_FILENAME="TR_Super Hang-On (W) (REV01) [!].bin"
set S_FILENAME="Super Hang-On (W) (REV01) [!].bin"
set SCRIPTNAME="superhangonsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
