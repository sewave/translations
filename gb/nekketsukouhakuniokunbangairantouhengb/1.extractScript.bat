@echo off
set T_FILENAME="Nekketsu Kouha Kunio-Kun - Bangai Rantou-Hen (J) [T+ENG].gb"
set SCRIPTNAME="nekketsukouhakuniokunbangairantouhengb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
