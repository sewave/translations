@echo off
set T_FILENAME="TR_Adventures of Tom Sawyer (U) [!].nes"
set S_FILENAME="Adventures of Tom Sawyer (U) [!].nes"
set SCRIPTNAME="adventuresoftomsawyernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
