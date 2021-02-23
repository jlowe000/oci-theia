THEIA_IMAGE=theiaide/theia-python:1.10.0
if [ "$1" != "" ]; then
    THEIA_IMAGE=$1
fi
docker run --rm -d -v "/home/oracle/project:/home/project:cached" --hostname theia-ide --name theia-ide --network theia_network $THEIA_IMAGE
