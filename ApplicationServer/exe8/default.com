<VirtualHost *:80>
  ServerName bootcamp.com

  ProxyRequests Off
  ProxyPreserveHost On

  <Proxy *>
    Order deny,allow
    Allow from all
  </Proxy>

  ProxyPass /sample ajp://localhost:8009/sample
  ProxyPassReverse /sample ajp://localhost:8009/sample
</VirtualHost>

