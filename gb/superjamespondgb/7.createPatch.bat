@echo off
set T_FILENAME="TR_Super James Pond (E) [!].gb"
set S_FILENAME="Super James Pond (E) [!].gb"
set SCRIPTNAME="superjamespondgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
