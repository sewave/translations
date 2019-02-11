@echo off
set T_FILENAME="TR_Berenstain Bears', The - Camping Adventure (U) [!].bin"
set S_FILENAME="Berenstain Bears', The - Camping Adventure (U) [!].bin"
set SCRIPTNAME="berenstainbearsthecampingadventuresmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
