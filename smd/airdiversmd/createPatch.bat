@echo off 
set T_FILENAME="TR_Air Diver (U) [!].bin"
set S_FILENAME="Air Diver (U) [!].bin"
set SCRIPTNAME="airdiversmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause 
