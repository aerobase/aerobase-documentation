#!/bin/bash

# Global Section 
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's/keycloak.org/aerobase.io/g'
find . -type f -wholename "*document-attributes-*.adoc" ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|Keycloak|Aerobase|g'
find . -type f -wholename "*pom.xml" ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|org.keycloak.documentation|org.aerobase.documentation|g'
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|keycloak/keycloak-documentation|aerobase/aerobase-documentation|g'
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|https://issues.jboss.org/secure/CreateIssueDetails!init.jspa?pid=12313920&components=12323375&issuetype=1&priority=3&description=File:%20{include_filename}|https://aerobase.atlassian.net/projects/AEROBASE/issues/AEROBASE-104?filter=allissues|g'

# Aggregation Section 
find aggregation/navbar* -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's/004670/263c79/g'
find aggregation/navbar* -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's/7da1dc/942afc/g'
find aggregation/navbar* -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's/428bca/942afc/g'
sed -i '/upgrading/ d' aggregation/navbar.html
sed -i '/release_notes/ d' aggregation/navbar.html

# Getting started
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|getting_started|gsg|g'
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|=getting_started|=gsg|g'
find . -type f -wholename "*pom.xml" ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|getting-started|gsg|g'

# Server Installation
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|server_installation|installation|g'
find . -type f ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|=server_installation|=installation|g'
find . -type f -wholename "*pom.xml" ! -wholename "*set-lable.sh" ! -wholename "*/\.git/*" ! -wholename "*/node_modules/*" -print0 | xargs -0 sed -i 's|server_installation|installation|g'

# README File
sed -i 's/Keycloak/Aerobase/g' README.md 
sed -i 's/keycloak/aerobase/g' README.md
sed -i 's|Red Hat Single Sign-On|Aerobase Cloud SSO/IAM|g' README.md
sed -i 's|access.redhat.com/products/red-hat-single-sign-on|cloud.aerobase.io/portal|g' README.md

# Server Development
sed -i '/events.adoc/,$d' server_development/topics.adoc
sed -i '/ifeval/ d' server_development/topics.adoc

# Remove unused sections
# TODO - parameter this section and execute twice (one before maven install and once ofter)
#rm -rf release_notes
#rm -rf upgrading
#rm -rf openshift
#sed -i '/upgrading/ d' pom.xml
#sed -i '/release_notes/ d' pom.xml
#sed -i '/openshift/ d' pom.xml

echo "successfully relabel to aerobase"
