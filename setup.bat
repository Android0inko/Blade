@echo off
title Setup - BladeBOT

if not exist .env goto setup

echo ���� .env �t�@�C�������݂��܂�
choice /m "�㏑�����܂����H"

if "%errorlevel%"=="2" exit

:setup

echo �Z�b�g�A�b�v
set /p Token="Token����͂��Ă�������: "
echo Token=%Token%>.env
set /p Prefix="Prefix����͂��Ă�������: "
echo Prefix=%Prefix%>>.env
set /p Language="Language����͂��Ă�������: "
echo Language=%Language%>>.env
set /p WelcomeChannel="WelcomeChannel����͂��Ă�������: "
echo WelcomeChannel=%WelcomeChannel%>>.env
