#!/bin/sh

aws ecr get-login | sed 's|https://||' |sed  "/-e none/s///"
docker push ${AWS_Account_ID}.dkr.ecr.${region}.amazonaws.com/${repo_name}:${image_name}
