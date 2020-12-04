@echo off
set T_FILENAME="TR_Buffalo Bill's Wild West Show (System 4).dsk"
set S_FILENAME="Buffalo Bill's Wild West Show (System 4).dsk"
set SCRIPTNAME="buffalobillswildwestshowdsk"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
