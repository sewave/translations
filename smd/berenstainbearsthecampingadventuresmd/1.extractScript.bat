@echo off
set T_FILENAME="Berenstain Bears', The - Camping Adventure (U) [!].bin"
set SCRIPTNAME="berenstainbearsthecampingadventuresmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
