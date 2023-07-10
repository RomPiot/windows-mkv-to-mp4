@echo off
set /p folder_path=Veuillez entrer le chemin du dossier : 
echo Vous avez spécifié le chemin suivant :  %folder_path%

echo Conversion en cours...

for %%i in ("%folder_path%\*.mkv") do (
    ffmpeg -i "%%i" -c copy "%%~dpni.mp4"
)

echo Conversion terminée.
