@echo off
set T_FILENAME="TR_Yogi Bear in Yogi Bear's Goldrush (Europe) (Proto).gg"
set SCRIPTNAME="yogibearinyogibearsgoldrushgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
