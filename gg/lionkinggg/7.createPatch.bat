@echo off
set T_FILENAME="TR_Lion King, The (E) [!].gg"
set S_FILENAME="Lion King, The (E) [!].gg"
set SCRIPTNAME="lionkinggg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
