#!/bin/bash
set -e
IFS='|'

CODEGEN="{\
\"generateCode\":true,\
\"codeLanguage\":\"swift\",\
\"fileNamePattern\":\"graphql/**/*.graphql\",\
\"generatedFileName\":\"API.swift\",\
\"generateDocs\":true,\
\"maxDepth\":2\
}"

amplify push \
--codegen $CODEGEN \
--yes