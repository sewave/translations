@echo off
set T_FILENAME="Shinobi II - The Silent Fury (U) [T+ESP].gg"
set S_FILENAME="Shinobi II - The Silent Fury (U) [!].gg"
set SCRIPTNAME="ggshinobi2"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
