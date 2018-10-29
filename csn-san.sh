openssl req -new -newkey rsa:2048 -nodes -sha256 -config /dev/stdin -keyout jacobclark.xyz.key -out jacobclark.xyz.csr <<CONF
[ req ]
x509_extensions = v3_req
distinguished_name = req_distinguished_name
req_extensions = v3_req
prompt = no
 
[ req_distinguished_name ]
countryName = GB
stateOrProvinceName = Manchester
localityName = Manchester
0.organizationName = Jacob Clark
organizationalUnitName = Software Engineering
commonName = jacobclark.xyz
emailAddress = jacob.clark@bbc.co.uk
 
[ v3_req ]
basicConstraints = CA:FALSE
keyUsage = nonRepudiation, digitalSignature, keyEncipherment
 
# all certificates now require a SAN field, even if there's only one host
subjectAltName = @alt_names
#
[ alt_names ]
DNS.1 = www.jacobclark.xyz
DNS.2 = www.jacob.uk.com
 
CONF
