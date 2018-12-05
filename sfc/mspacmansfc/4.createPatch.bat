@echo off
set T_FILENAME="TR_Ms. Pac-Man (U).smc"
set S_FILENAME="Ms. Pac-Man (U).smc"
set SCRIPTNAME="mspacmansfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
