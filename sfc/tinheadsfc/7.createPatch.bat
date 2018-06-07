@echo off
set T_FILENAME="TR_Tinhead (E) (Beta).smc"
set S_FILENAME="Tinhead (E) (Beta).smc"
set SCRIPTNAME="tinheadsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
