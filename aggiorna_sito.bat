@echo off
title Aggiornamento Vault Evernight Wisdom
echo ====================================================
echo   Aggiornamento del sito Evernight Wisdom (Quartz)
echo ====================================================
echo.

:: Si sposta nella cartella in cui si trova lo script
cd /d "%~dp0"

echo [1/3] Preparazione dei file modificati...
git add .

echo.
set "msg="
set /p msg="Descrizione modifiche (premi INVIO per messaggio automatico): "
if "%msg%"=="" set msg=Aggiornamento lore - %date% %time:~0,5%

echo.
echo [2/3] Salvataggio locale (Commit)...
git commit -m "%msg%"

echo.
echo [3/3] Invio modifiche su GitHub...
git push origin main

echo.
echo ====================================================
echo   FATTO! GitHub Actions ha avviato l'aggiornamento.
echo   Il sito sara' aggiornato online tra 1-2 minuti.
echo ====================================================
echo.
pause