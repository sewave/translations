@echo off
set T_FILENAME="TR_Nekketsu Kouha Kunio-Kun - Bangai Rantou-Hen (J) [T+ENG].gb"
set S_FILENAME="Nekketsu Kouha Kunio-Kun - Bangai Rantou-Hen (J) [!].gb"
set SCRIPTNAME="nekketsukouhakuniokunbangairantouhengb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
