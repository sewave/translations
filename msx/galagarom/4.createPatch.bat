@echo off
set T_FILENAME="TR_Galaga (1984) (Namcot) (J).rom"
set S_FILENAME="Galaga (1984) (Namcot) (J).rom"
set SCRIPTNAME="galagarom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
