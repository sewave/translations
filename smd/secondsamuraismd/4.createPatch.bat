@echo off
set T_FILENAME="TR_Second Samurai (Europe).md"
set S_FILENAME="Second Samurai (Europe).md"
set SCRIPTNAME="secondsamuraismd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
