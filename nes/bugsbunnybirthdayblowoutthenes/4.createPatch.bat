@echo off
set T_FILENAME="TR_Bugs Bunny Birthday Blowout, The (U) [!].nes"
set S_FILENAME="Bugs Bunny Birthday Blowout, The (U) [!].nes"
set SCRIPTNAME="bugsbunnybirthdayblowoutthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
