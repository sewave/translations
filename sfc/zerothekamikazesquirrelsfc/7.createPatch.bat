@echo off
set T_FILENAME="TR_Zero the Kamikaze Squirrel (U) [!].smc"
set S_FILENAME="Zero the Kamikaze Squirrel (U) [!].smc"
set SCRIPTNAME="zerothekamikazesquirrelsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
