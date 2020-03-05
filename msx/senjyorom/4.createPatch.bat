@echo off
set T_FILENAME="TR_Senjyo (1984) (Sony) (J).rom"
set S_FILENAME="Senjyo (1984) (Sony) (J).rom"
set SCRIPTNAME="senjyorom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
