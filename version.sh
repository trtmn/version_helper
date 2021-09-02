MYVERSION=`defaults read app.mmhmm.app LastSeenVersion`
MYBUILD=`defaults read app.mmhmm.app LastSeenBuild`
MYRELEASECONFIG=`defaults read app.mmhmm.app LastSeenReleaseConfiguration`

macos_build=`sw_vers -productName`' '`sw_vers -productVersion`' '`sw_vers -buildVersion`
FINALSTRING="mmhmm:\n"
FINALSTRING+="Version: ${MYVERSION}\n"
FINALSTRING+="Build: ${MYBUILD} (${MYRELEASECONFIG}) \n\n"
FINALSTRING+=${macos_build}

echo "$FINALSTRING" | pbcopy

echo "I've copied the Mmhmm version info to your clipboard."
echo "Just paste in the appropriate app"