#!/bin/bash
ID=yoonsung
PW=wlsdud891
EMAIL=lvev9925@naver.com
TAG=1.0

gradle deployDockerImage -PDOCKER_USERNAME=$ID -PDOCKER_PASSWORD=$PW -PDOCKER_EMAIL=$EMAIL -PDOCKER_TAG=$TAG -x test