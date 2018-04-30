@echo off
set T_FILENAME="TR_Megaman III (U) [!].gb"
set S_FILENAME="Megaman III (U) [!].gb"
set SCRIPTNAME="megamaniiigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
