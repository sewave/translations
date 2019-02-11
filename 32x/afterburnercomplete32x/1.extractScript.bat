@echo off
set T_FILENAME="After Burner Complete (JU) (32X) [!].32x"
set SCRIPTNAME="afterburnercomplete32x"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
