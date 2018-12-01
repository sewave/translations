@echo off
set T_FILENAME="TR_Solomon no Kagi - Oujo Rihita no Namida (J) [!].sms"
set S_FILENAME="Solomon no Kagi - Oujo Rihita no Namida (J) [!].sms"
set SCRIPTNAME="solomonnokagioujorihitanonamidasms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
