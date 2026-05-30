Flame Dragon 2: Legend of Golden Castle (PC)
Traducción al Español v1.0 (23/05/2026)
(C) 2026 Traducciones Wave

------------------------
Notas y Fallos Conocidos
------------------------
Esta traducción y hacking es completamente original.
Si encuentras algún fallo puedes contactar conmigo y ver mis traducciones en
traduccioneswave.blogspot.com

Este juego tiene para mi una gran importancia. Lo jugué en los 90 y sin
entender nada (de la trama) me encantó. Por eso y porque está en chino es un
hito para mi.

La traducción está hecha ÍNTEGRAMENTE con IA (Gemini). Se ha verificado que
cuadrara bastante con las guías de GAMEFAQS aunque tampoco son perfectas.
También se han hecho algunos ajustes de tono o para que las frases tuvieran más
sentido.
Magias, objetos, razas, clases... tienen textos en gráficos para poder acomodar
la gran cantidad de letras necesarias.
En la carpeta fonts están las cuatro fuentes libres usadas en el juego:
-Minipixel-Regular.ttf (https://burpyfresh.itch.io/minipixel):
La más pequeña, para magias, objetos, clases, razas, etc.
-Modern DOS 8x16.ttf (https://es.ffonts.net/Modern-DOS-8x16.font):
Fuente 8x16 usada en los nombres de los personajes con nombres largos.
-unscii-8-thin.ttf (https://viznut.fi/unscii/):
Esta se usa en nombres muy largos de personajes o de escenarios.
-VCR_OSD_MONO_1.001.ttf (https://www.dafont.com/es/vcr-osd-mono.font):
La fuente principal de los diálogos, estilo VCR de los 90.

Existen tres programas en Python para gestionar la traducción:
-flamedragon2pc_extract.py: Para extraer los textos de FDTXT.DAT a un json.
-flamedragon2pc_rebuild.py: Para insertar los textos de un json a FDTXT.DAT.
-flamedragon2pc_gui_editor.py: Una interfaz gráfica para editar la traducción
que ayuda con los tamaños de las líneas y la codificación del json.

En la carpeta gfx están todos los gráficos usados como texto, 1BPP 16x16.

Se han dejado sin traducir los menús y estadísticas que ya estaban en inglés.
No se ha encontrado el gráfico de las condiciones de victoria, por lo que están
en chino.

------------------------
Instrucciones de Parcheo
------------------------
La traducción consta de 2/3 partes.
La primera es el fichero FDTXT.DAT, sustituye al original.

Luego está la parte de las fuentes, hay que aplicar el parche FDOTHER.ips
En formato IPS, puedes usar LunarIPS o Floating IPS.
Archivo utilizado:
FDOTHER.DAT
MD5: 0496698f0ac67a3ff2448d8c7d80113f
SHA1: 358be825986500282b36a7ad9a17ce374354f802
CRC32: 824572c0
3382481 bytes

Y por último, si el ejecutable coincide con esta versión, aplicar el ips FD2.ips
ya que arregla un bug para que cierto personaje pueda unirse.
En formato IPS, puedes usar LunarIPS o Floating IPS.
Archivo utilizado:
FD2.EXE
MD5: 33464c81e6a364fd0660141139aa8e6e
SHA1: 09076101293c0014ad88a026797f994105b6a52a
CRC32: 49aaea75
509158 bytes

--------
Créditos
--------
Wave - Hacking, traducción y pruebas.

-- FIN --