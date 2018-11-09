@echo off
set T_FILENAME="TR_Chuck Rock II - Son of Chuck (U) [!].gg"
set S_FILENAME="Chuck Rock II - Son of Chuck (U) [!].gg"
set SCRIPTNAME="chuckrockiisonofchuckgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
