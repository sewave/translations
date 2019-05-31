@echo off
set T_FILENAME="TR_Mr. Nutz (E) [!].bin"
set S_FILENAME="Mr. Nutz (E) [!].bin"
set SCRIPTNAME="mrnutzsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
