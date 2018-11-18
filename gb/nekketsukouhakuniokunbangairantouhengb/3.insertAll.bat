@echo off
set T_FILENAME="TR_Nekketsu Kouha Kunio-Kun - Bangai Rantou-Hen (J) [T+ENG].gb"
set S_FILENAME="Nekketsu Kouha Kunio-Kun - Bangai Rantou-Hen (J) [T+ENG].gb"
set SCRIPTNAME="nekketsukouhakuniokunbangairantouhengb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
