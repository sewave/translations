@echo off
set T_FILENAME="TR_Garfield Labyrinth (U).gb"
set SCRIPTNAME="garfieldlabyrinthgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A822:50,A902:20,AC02:50,DAD0:20,DBD0:60,E6A0:90,E7A0:90,10850:80,10950:80,108D0:20,C990:10,CB10:20
pause
