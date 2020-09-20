@echo off
set T_FILENAME="TR_Young Indiana Jones Chronicles, The (USA).nes"
set SCRIPTNAME="youngindianajoneschroniclesthenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20E60:10,20F60:10,20EE0:20,20FE0:20,32190:30,33190:30,208B0:10,209B0:10,208F0:10,209F0:10,20A80:30,20B80:30,20E10:10,20F10:10
pause
