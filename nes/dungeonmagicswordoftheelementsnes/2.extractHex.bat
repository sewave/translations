@echo off
set T_FILENAME="TR_Dungeon Magic - Sword of the Elements (USA).nes"
set SCRIPTNAME="dungeonmagicswordoftheelementsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21B40:2D0,24B40:2D0,25B40:2D0,26B40:2D0,27B40:2D0,20EB0:30,23FE0:10,22780:40,22820:200,22FA0:10,28FA0:10,29FA0:10,2AFA0:10,2BFA0:10,2CFA0:10,2DFA0:10,2EFA0:10,2FFA0:10,30FA0:10,31FA0:10
pause
