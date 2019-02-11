@echo off
set T_FILENAME="TR_Berenstain Bears', The - Camping Adventure (U) [!].bin"
set SCRIPTNAME="berenstainbearsthecampingadventuresmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DFD70:20
pause
