@echo off
set T_FILENAME="TR_Moon Crystal (Japan) [T+ENG].nes"
set SCRIPTNAME="mooncrystalnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5A810:200,400D0:10,41810:200,5B810:200,41C10:200,5AC10:200,5B010:200,5B410:200,5BC10:200
pause
