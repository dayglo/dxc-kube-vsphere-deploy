docker run \
        -it \
        --rm \
        --env="PS1=[container]:\w> " \
        --net=host \
        --dns 30.5.86.7 \
        --dns 30.5.86.8 \
        -v $(pwd)/.config:/opt/kubernetes-anywhere/.config \
        cnastorage/kubernetes-anywhere:latest \
        /bin/bash
