@echo off
set T_FILENAME="TR_Moon Ranger (Bunch) [!].nes"
set S_FILENAME="Moon Ranger (Bunch) [!].nes"
set SCRIPTNAME="moonrangernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
