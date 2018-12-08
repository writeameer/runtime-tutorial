#!/bin/bash

aws lambda publish-layer-version --layer-name bash-runtime --zip-file fileb://runtime.zip
