echo ������֤��˽Կ
"C:\Program Files\Git\usr\bin\openssl.exe" genrsa -aes256 -passout pass:123456 -out server-pass.key 2048

echo ��������Ҫ���������RSA֤��
"C:\Program Files\Git\usr\bin\openssl.exe" rsa -in server-pass.key -out server.key

echo ǩ����֤��
"C:\Program Files\Git\usr\bin\openssl.exe" req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt -config req.cnf -sha256