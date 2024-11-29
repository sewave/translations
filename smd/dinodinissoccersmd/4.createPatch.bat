@echo off
set T_FILENAME="TR_Dino Dini's Soccer (Europe).md"
set S_FILENAME="Dino Dini's Soccer (Europe).md"
set SCRIPTNAME="dinodinissoccersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
