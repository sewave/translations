@echo off
set T_FILENAME="TR_Zool (U).smc"
set S_FILENAME="Zool (U).smc"
set SCRIPTNAME="zoolsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
