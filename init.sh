#!/bin/bash
set -e
IFS='|'

AUTHCONFIG="{\
\"googleClientId\":\"goog\"
}"

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":true,\
\"profileName\":\"default\",\
\"accessKeyId\":\"headlessaccesskeyid\",\
\"secretAccessKey\":\"headlesssecrectaccesskey\",\
\"region\":\"us-east-1\"\
}"
AMPLIFY="{\
\"projectName\":\"headlessTemplate\",\
\"envName\":\"dev\",\
\"defaultEditor\":\"code\"\
}"
FRONTEND="{\
\"frontend\":\"ios\"
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"
CATEGORIES="{\
\"auth\":$AUTHCONFIG\
}"

amplify init \
--amplify $AMPLIFY \
--categories $CATEGORIES \
--frontend $FRONTEND \
--providers $PROVIDERS \
--yes