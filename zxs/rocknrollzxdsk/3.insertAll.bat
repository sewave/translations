@echo off 
set T_FILENAME="TR_Rock 'n Roll - Side A.dsk"
set S_FILENAME="Rock 'n Roll - Side A.dsk"
set SCRIPTNAME="rocknrollzxdsk"
set T_FILENAMEB="TR_Rock 'n Roll - Side B.dsk"
set S_FILENAMEB="Rock 'n Roll - Side B.dsk"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
del %T_FILENAMEB%
copy %S_FILENAMEB% %T_FILENAMEB%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%B.ext %T_FILENAMEB% 
pause 
