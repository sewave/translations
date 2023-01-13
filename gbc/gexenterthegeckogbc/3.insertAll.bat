@echo off
set T_FILENAME="TR_Gex - Enter the Gecko (USA, Europe).gbc"
set S_FILENAME="Gex - Enter the Gecko (USA, Europe).gbc"
set SCRIPTNAME="gexenterthegeckogbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
