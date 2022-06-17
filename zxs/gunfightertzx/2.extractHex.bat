@echo off
set T_FILENAME="TR_Gunfighter.tzx"
set SCRIPTNAME="gunfightertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5744:10,5784:30,5814:20,D64F:30,D47F:40,387C:60,3DBC:10,42EC:80,446C:60,47DC:300
pause
