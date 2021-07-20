## Example
```sh
cd example && \
docker run -p 80:80 \
-p 443:443 \
-v $(pwd)/wwwroot:/data/wwwroot \
-v $(pwd)/wwwlogs:/data/wwwlogs \
-v $(pwd)/vhost:/data/server/nginx/vhost \
-v $(pwd)/ssl:/data/server/nginx/ssl \
-v $(pwd)/ini:/data/server/php/ini \
-v $(pwd)/extension:/data/server/php/extension \
-d nginx-php7
```

### WEB
- **HTTP**: http://hostname
- **HTTPS**: https://hostname

If you modify the hosts, you can open the website with the domain.
- https://test.docker.mmapp.cc