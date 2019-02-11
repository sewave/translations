@echo off
set T_FILENAME="TR_After Burner Complete (JU) (32X) [!].32x"
set S_FILENAME="After Burner Complete (JU) (32X) [!].32x"
set SCRIPTNAME="afterburnercomplete32x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
