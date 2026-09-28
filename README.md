# UNLIMITED 164GB RAM VPS - NO LIMIT BYPASS

**Full unrestricted SSH VPS with claimed 164GB RAM + no resource limits.**

## Credentials
- **Username:** `root`
- **Password:** `dev`

## Features
- 164GB RAM target
- No limit bypass enabled
- Unlimited processes / open files
- ngrok TCP tunnel for public SSH
- Railway Docker ready

## Deploy
1. Connect this repo to Railway.app
2. Deploy as Docker service
3. Open logs → find `tcp://xxxx.tcp.ngrok.io:port`
4. Connect:
```bash
ssh root@xxxx.tcp.ngrok.io -p PORT
```
Password: `dev`

## Notes
- Free Railway/ngrok limits still apply at platform level
- This setup maxes out what the host allows + claims high resources
- For true high RAM use paid Railway plans or other providers
