#!/bin/sh

SCRIPT_DIR=`cd $(dirname ${BASH_SOURCE:-$0}); pwd`
rm -rf $SCRIPT_DIR/../$USER

docker run \
       -u `id -u`:`id -g` \
       -v /etc/group:/etc/group:ro \
       -v /etc/passwd:/etc/passwd:ro \
       -v /etc/shadow:/etc/shadow:ro \
       -v /etc/sudoers.d:/etc/sudoers.d:ro \
       --rm -it --name docker_aws_cdk_env \
       -v $PWD:/home -w /home \
       -v ~/.aws:/home/$USER/.aws \
       -v ~/.ssh:/home/$USER/.ssh \
       -v ~/.gitconfig:/home/$USER/.gitconfig \
       -v $SCRIPT_DIR/usr/.bashrc:/home/$USER/.bashrc \
       --net=host \
       --env AWS_ACCESS_KEY_ID --env AWS_SECRET_ACCESS_KEY --env AWS_SESSION_TOKEN \
       docker_aws_cdk_env:latest bash

rm -rf $SCRIPT_DIR/../$USER
