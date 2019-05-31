@echo off
set T_FILENAME="TR_Mr Nutz (U).gb"
set S_FILENAME="Mr Nutz (U).gb"
set SCRIPTNAME="mrnutzgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
