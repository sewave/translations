@echo off
set T_FILENAME="TR_Scooby-Doo Mystery (USA).sfc"
set S_FILENAME="Scooby-Doo Mystery (USA).sfc"
set SCRIPTNAME="scoobydoomysterysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
