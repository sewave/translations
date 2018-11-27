@echo off
set T_FILENAME="TR_Bugs Bunny Birthday Blowout, The (U) [!].nes"
set SCRIPTNAME="bugsbunnybirthdayblowoutthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 29F10:100,32810:60,32910:60,32A10:60,35360:20,37100:700,33E70:80,3DE70:80,34E70:80,36580:30,36760:10,36B70:20,34D10:70
pause
