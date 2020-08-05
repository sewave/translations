@echo off
set T_FILENAME="TR_Yogi Bear in Yogi Bear's Goldrush (Europe) (Proto).gg"
set S_FILENAME="Yogi Bear in Yogi Bear's Goldrush (Europe) (Proto).gg"
set SCRIPTNAME="yogibearinyogibearsgoldrushgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
