@echo off
set T_FILENAME="TR_Wario Land 3 (World) (En,Ja).gbc"
set SCRIPTNAME="warioland3gbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F1F18:60,1F20B6:40,94000:E00,95000:C00,96000:C00,97000:E00,5085:400,1F63DD:1F0
pause
