#!/bin/bash
DEBUG_PORT = $1

BUILD_TOOL_PATH="/Users/ly/Library/Android/sdk/build-tools/"
LAST_SDK_VERSION=`ls $BUILD_TOOL_PATH | awk '{print $NF}' |tail -1`
BUILD_AAPT_PATH=$BUILD_TOOL_PATH$LAST_SDK_VERSION

#get targetsdk
#echo $((`$BUILD_AAPT_PATH/aapt list -a ./app/build/outputs/apk/debug/app-debug.apk |grep targetSdkVersion |cut -d")" -f 3`))

#get package name
PACKAGE_NAME=`$BUILD_AAPT_PATH/aapt dump badging ./app/build/outputs/apk/debug/app-debug.apk |grep package:\ name |awk '{print $2}' | cut -d'=' -f 2`

#get the process according to package name
#adb jdwp | adb shell ps $1 | awk 'NR>=2 {print $2 " " $9}'

#get pid
PROCESS_ID=`adb shell ps |grep $PACKAGE_NAME |awk '{print $2}'`


adb -d forward tcp:$DEBUG_PORT jdwp:$PROCESS_ID
jdb -attach localhost:$DEBUG_PORT -sourcepath ./

#echo $PACKAGE_NAME
