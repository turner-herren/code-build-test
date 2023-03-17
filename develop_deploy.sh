#!/bin/sh

IS_DEVELOP_DEPLOY=true
AWS_CREDENTIAL_NAME="AWS_CREDENTIAL"
ECS_CLUSTER_NAME="code-build-test"
ECS_TASK_NAME="code-build-test-task"
ECS_SERVICE_NAME="code-build-test-service"
ECR_IMAGE_NAME="248704842720.dkr.ecr.ap-northeast-2.amazonaws.com/code-build-test"

CURRENT_BRANCH_NAME=$(git branch --show-current)

curl --request POST \
     --url 'https://circleci.com/api/v2/project/github/turner-herren/code-build-test/pipeline'\
     --header 'Circle-Token: 6efe159c507c1c26b896cac3f9d3ca94f521603b' \
     --header 'content-type: application/json' \
     --data "{
             \"branch\": \"${CURRENT_BRANCH_NAME}\",
             \"parameters\":{
               \"is_develop_deploy\": ${IS_DEVELOP_DEPLOY},
               \"aws_credential_name\": \"${AWS_CREDENTIAL_NAME}\",
               \"cluster_name\": \"${ECS_CLUSTER_NAME}\",
               \"task_name\": \"${ECS_TASK_NAME}\",
               \"service_name\": \"${ECS_SERVICE_NAME}\",
               \"image_name\": \"${ECR_IMAGE_NAME}\"
             }
            }"
