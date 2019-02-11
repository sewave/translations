@echo off
set T_FILENAME="After Burner II (UE) [!].bin"
set SCRIPTNAME="afterburneriismd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
