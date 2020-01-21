@echo off
set T_FILENAME="TR_Championship Lode Runner (1985) (Sony) (J).rom"
set S_FILENAME="Championship Lode Runner (1985) (Sony) (J).rom"
set SCRIPTNAME="championshiploderunnerrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
