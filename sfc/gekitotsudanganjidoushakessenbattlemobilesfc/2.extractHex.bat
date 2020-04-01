@echo off
set T_FILENAME="TR_Gekitotsu Dangan Jidousha Kessen - Battle Mobile (J).smc"
set SCRIPTNAME="gekitotsudanganjidoushakessenbattlemobilesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8D000:C0,8D200:C0
pause
