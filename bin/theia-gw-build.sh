docker images
docker rmi theia-gw
BUILD_OPTIONS=""
if [ "$1" != "" ]; then
    BUILD_OPTIONS="${BUILD_OPTIONS} --build-arg ORDS_HOSTNAME=$1"
fi 
if [ ! -f infra/compute/theia-gw.key ]; then
    OPENSSL_PWD=""
    if [ "$2" != "" ]; then 
        OPENSSL_PWD="-passout pass:$2"
    fi
    openssl req -x509 -nodes -days 365 -newkey rsa:4096 -subj /CN=AU/ -keyout infra/compute/theia-gw.key -out infra/compute/theia-gw.crt
fi
if [ "$2" != "" ]
then 
    BUILD_OPTIONS="${BUILD_OPTIONS} --build-arg CERT_PASSWORD=$2"
fi
docker build --tag theia-gw ${BUILD_OPTIONS} --file containers/web/theia-gw.Dockerfile .

