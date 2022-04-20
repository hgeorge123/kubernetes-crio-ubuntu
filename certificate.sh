DOMAIN=aon360sdm.local
openssl genrsa -out "${DOMAIN}".key 2048 && chmod 0600 "${DOMAIN}".key
openssl req -new -sha256 -key "${DOMAIN}".key -out "${DOMAIN}".csr
openssl x509 -req -in "${DOMAIN}".csr -CA aon360sdm-ca.crt -CAkey aon360sdm-ca.key -CAcreateserial -out "${DOMAIN}".crt -days 1825 -sha256
