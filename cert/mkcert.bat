echo 构建根证书私钥
"C:\Program Files\Git\usr\bin\openssl.exe" genrsa -aes256 -passout pass:123456 -out server-pass.key 2048

echo 创建不需要输入密码的RSA证书
"C:\Program Files\Git\usr\bin\openssl.exe" rsa -in server-pass.key -out server.key

echo 签发根证书
"C:\Program Files\Git\usr\bin\openssl.exe" req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt -config req.cnf -sha256