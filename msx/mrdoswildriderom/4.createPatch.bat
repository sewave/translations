@echo off
set T_FILENAME="TR_Mr. Do's Wild Ride (Japan).rom"
set S_FILENAME="Mr. Do's Wild Ride (Japan).rom"
set SCRIPTNAME="mrdoswildriderom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
