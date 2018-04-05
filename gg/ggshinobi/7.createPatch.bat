@echo off
set T_FILENAME="GG Shinobi (E) [T+ESP].gg"
set S_FILENAME="GG Shinobi (E) [!].gg"
set SCRIPTNAME="ggshinobi"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
