@echo off
set T_FILENAME="TR_Megaman II (U) [!].gb"
set S_FILENAME="Megaman II (U) [!].gb"
set SCRIPTNAME="megamaniigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
