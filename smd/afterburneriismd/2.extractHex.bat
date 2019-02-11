@echo off
set T_FILENAME="TR_After Burner II (UE) [!].bin"
set SCRIPTNAME="afterburneriismd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 16500:C00
pause
