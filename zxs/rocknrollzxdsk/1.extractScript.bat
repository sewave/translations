@echo off 
set T_FILENAME="Rock 'n Roll - Side A.dsk"
set T_FILENAMEB="Rock 'n Roll - Side B.dsk"
set SCRIPTNAME="rocknrollzxdsk"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAMEB% %SCRIPTNAME%B.ext %SCRIPTNAME%B.off
pause 