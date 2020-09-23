@echo off
set T_FILENAME="TR_Rugrats Movie, The (USA) (SGB Enhanced) (GB Compatible).gbc"
set S_FILENAME="Rugrats Movie, The (USA) (SGB Enhanced) (GB Compatible).gbc"
set SCRIPTNAME="rugratsmoviethegbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
