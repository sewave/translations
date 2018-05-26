@echo off
set T_FILENAME="TR_Ghostbusters (W) (REV01) [!].bin"
set S_FILENAME="Ghostbusters (W) (REV01) [!].bin"
set SCRIPTNAME="ghostbusterssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
