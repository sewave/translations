@echo off 
set T_FILENAME="TR_Rock 'n Roll - Side A.dsk"
set S_FILENAME="Rock 'n Roll - Side A.dsk"
set T_FILENAMEB="TR_Rock 'n Roll - Side B.dsk"
set S_FILENAMEB="Rock 'n Roll - Side B.dsk"
set SCRIPTNAME="rocknrollzxdsk"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
java -jar Hextractor.jar -cip %S_FILENAMEB% %T_FILENAMEB% %SCRIPTNAME%B.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause 