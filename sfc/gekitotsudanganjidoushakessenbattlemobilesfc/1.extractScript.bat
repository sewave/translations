@echo off
set T_FILENAME="Gekitotsu Dangan Jidousha Kessen - Battle Mobile (J).smc"
set SCRIPTNAME="gekitotsudanganjidoushakessenbattlemobilesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
