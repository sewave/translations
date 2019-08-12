@echo off
set T_FILENAME="TR_Puyo Pop (World) (En,Ja) (v1.06).ngc"
set S_FILENAME="Puyo Pop (World) (En,Ja) (v1.06).ngc"
set SCRIPTNAME="puyopopngc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
