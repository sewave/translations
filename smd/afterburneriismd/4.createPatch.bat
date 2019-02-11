@echo off
set T_FILENAME="TR_After Burner II (UE) [!].bin"
set S_FILENAME="After Burner II (UE) [!].bin"
set SCRIPTNAME="afterburneriismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
