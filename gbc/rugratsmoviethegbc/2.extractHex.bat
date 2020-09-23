@echo off
set T_FILENAME="TR_Rugrats Movie, The (USA) (SGB Enhanced) (GB Compatible).gbc"
set SCRIPTNAME="rugratsmoviethegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DB95C:30,DBB4C:30,DBD4C:30,DF62C:30,DF81C:30,DFA1C:30,E1230:40,94CF8:100,62FC0:140,199AF:C0
pause
