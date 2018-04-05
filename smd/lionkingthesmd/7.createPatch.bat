@echo off
set T_FILENAME="TR_Lion King, The (W) [!].gen"
set S_FILENAME="Lion King, The (W) [!].gen"
set SCRIPTNAME="lionkingthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
