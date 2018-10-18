@echo off
set T_FILENAME="TR_Sky Blazer (U) [!].smc"
set S_FILENAME="Sky Blazer (U) [!].smc"
set SCRIPTNAME="skyblazersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
