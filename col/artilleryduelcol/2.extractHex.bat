@echo off
set T_FILENAME="TR_Artillery Duel (1983) (Xonox).col"
set SCRIPTNAME="artilleryduelcol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex ACF:10,2583:A0
pause
