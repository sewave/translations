@echo off
set T_FILENAME="TR_Rambo III (W) (REV01) [!].bin"
set S_FILENAME="Rambo III (W) (REV01) [!].bin"
set SCRIPTNAME="ramboIIIsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
