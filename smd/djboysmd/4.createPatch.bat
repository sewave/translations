@echo off
set T_FILENAME="TR_DJ Boy (U) [!].bin"
set S_FILENAME="DJ Boy (U) [!].bin"
set SCRIPTNAME="djboysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
