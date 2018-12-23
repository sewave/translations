@echo off
set T_FILENAME="TR_Star Wars (U) [!].gg"
set S_FILENAME="Star Wars (U) [!].gg"
set SCRIPTNAME="starwarsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
