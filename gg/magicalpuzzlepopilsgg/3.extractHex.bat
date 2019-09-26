@echo off
set T_FILENAME="TR_Magical Puzzle Popils (World) (En,Ja).gg"
set SCRIPTNAME="magicalpuzzlepopilsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FC40:400,17040:40,17240:40,1A580:60,1A780:60,1A9C0:40,1ABC0:40,18400:200,18780:60,14400:400,174A0:60,176A0:60,178C0:60,17D00:100,17F00:100
pause
