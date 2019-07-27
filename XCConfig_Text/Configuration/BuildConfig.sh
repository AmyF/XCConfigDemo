#!/bin/sh

#  Script.sh
#  XCConfig_Text
#
#  Created by Feida Huang on 2019/7/26.
#  Copyright © 2019 unko. All rights reserved.

printf "//\n//\n//generated by BuildConfig.sh\n"

printf "\nimport Foundation\n\n"

echo "struct BuildConfig { "

echo "\tprivate init() {}"

env |\

grep "BuildConfig_" | \

sed "s/BuildConfig_/    static let /" |\

sed -E 's/=(.*)/ = "\1"/'

echo "}"
