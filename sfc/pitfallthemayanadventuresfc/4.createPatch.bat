@echo off
set T_FILENAME="TR_Pitfall - The Mayan Adventure (USA).sfc"
set S_FILENAME="Pitfall - The Mayan Adventure (USA).sfc"
set SCRIPTNAME="pitfallthemayanadventuresfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
