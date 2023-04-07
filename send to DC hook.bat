@echo off
set webhookUrl=WEBHOOK-URL
title Discord Webhook Sender
:message
set /p message=Enter your message: 

curl -H "Content-Type: application/json" -X POST -d "{\"content\": \"%message%\"}" %webhookUrl%

echo Message sent to Discord webhook.
goto message