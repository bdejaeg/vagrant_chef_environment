nginx['ssl_certificate'] = "/etc/pki/tls/private/chef-server.pem"
nginx['ssl_certificate_key'] = "/etc/pki/tls/private/chef-server.key"
nginx['ssl_ciphers'] = "HIGH:MEDIUM:!LOW:!kEDH:!aNULL:!ADH:!eNULL:!EXP:!SSLv2:!SEED:!CAMELLIA:!PSK"
nginx['ssl_protocols'] = "TLSv1 TLSv1.1 TLSv1.2"
