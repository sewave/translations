@echo off
set T_FILENAME="TR_Nekketsu Kouha Kunio-Kun - Bangai Rantou-Hen (J) [T+ENG].gb"
set SCRIPTNAME="nekketsukouhakuniokunbangairantouhengb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
