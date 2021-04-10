@echo off
set T_FILENAME="language_1_40_e.gtf"
set T_FILENAME2="language_1_35.gtf"
set T_FILENAME3="syw_nocd.exe"
set S_FILENAME="language.gtf"
set S_FILENAME2="syw.exe"
set SCRIPTNAME="sevenyearswarpc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%_1_40_e.ips
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME2% %SCRIPTNAME%_1_35.ips
java -jar Hextractor.jar -cip %S_FILENAME2% %T_FILENAME3% %SCRIPTNAME%_NoCD.ips
REM java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt %SCRIPTNAME%_readme.txt %S_FILENAME%
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt %SCRIPTNAME%_readme.txt %S_FILENAME2%
pause
