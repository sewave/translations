@echo off
set T_FILENAME="TR_Butamaru Pants (1983) (Hal) (J).rom"
set S_FILENAME="Butamaru Pants (1983) (Hal) (J).rom"
set SCRIPTNAME="butamarupantsrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
