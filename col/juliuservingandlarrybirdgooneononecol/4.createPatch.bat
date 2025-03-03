@echo off
set T_FILENAME="TR_Julius Erving and Larry Bird Go - One-on-One (USA).col"
set S_FILENAME="Julius Erving and Larry Bird Go - One-on-One (USA).col"
set SCRIPTNAME="juliuservingandlarrybirdgooneononecol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
