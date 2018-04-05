@echo off 
set T_FILENAME="TR_Robocop 3 (U).smc"
set S_FILENAME="Robocop 3 (U).smc"
set SCRIPTNAME="robocop3sfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
