@echo off
set T_FILENAME="TR_Gekitotsu Dangan Jidousha Kessen - Battle Mobile (J).smc"
set S_FILENAME="Gekitotsu Dangan Jidousha Kessen - Battle Mobile (J).smc"
set SCRIPTNAME="gekitotsudanganjidoushakessenbattlemobilesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
