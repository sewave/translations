@echo off
set T_FILENAME="TR_Mr. Nutz (U).smc"
set S_FILENAME="Mr. Nutz (U).smc"
set SCRIPTNAME="mrnutzsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
