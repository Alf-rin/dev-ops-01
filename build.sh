#!/bin/bash

Imagename="test"
tag="latest"

docker build -t $Imagename:$tag .
