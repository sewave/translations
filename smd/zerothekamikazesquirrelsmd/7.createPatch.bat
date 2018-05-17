@echo off
set T_FILENAME="TR_Zero the Kamikaze Squirrel (U) [!].gen"
set S_FILENAME="Zero the Kamikaze Squirrel (U) [!].gen"
set SCRIPTNAME="zerothekamikazesquirrelsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
