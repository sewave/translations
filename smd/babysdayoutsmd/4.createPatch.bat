@echo off
set T_FILENAME="TR_Baby's Day Out (USA) (Proto).md"
set S_FILENAME="Baby's Day Out (USA) (Proto).md"
set SCRIPTNAME="babysdayoutsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
