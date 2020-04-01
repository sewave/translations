@echo off
set T_FILENAME="TR_Gekitotsu Dangan Jidousha Kessen - Battle Mobile (J).smc"
set S_FILENAME="Gekitotsu Dangan Jidousha Kessen - Battle Mobile (J).smc"
set SCRIPTNAME="gekitotsudanganjidoushakessenbattlemobilesfc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcs %T_FILENAME%
pause
