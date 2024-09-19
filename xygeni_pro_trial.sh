#!/bin/bash

export XY_NAME=local_java-design-patterns_PRO_TRIAL
export XY_ENV=/home/luisgarcia/LGV/XY_SCANNERS/scanner_pro_trial

EXCLUDES="*/scanner/**,**/repos/**,**/path_to_xyware.goat/malicious/java/**,**/.github/workflows/semgrep.yml,**/reports/**,xygeni_demo_trial.sh,xygeni_pro_trial.sh,snyk.sh"


echo "DEMO TRIAL==================" && date

start_time=$(date +%s%3N)


#/home/luisgarcia/LGV/XY_SCANNERS/scanner_demo_trial/xygeni scan -n $XY_NAME  --never-fail  -f json -o reports/my_project --include-collaborators --run="inventory,misconf,codetamper,deps,suspectdeps,secrets,compliance,iac"  --dir .  -e $EXCLUDES

$XY_ENV/xygeni scan -n $XY_NAME  --never-fail --include-collaborators \
                    --run="inventory,misconf,codetamper,deps,suspectdeps,secrets,compliance,iac"  \
                    --dir . -e $EXCLUDES

#/home/luisgarcia/LGV/XY_SCANNERS/scanner_demo_trial/xygeni scan -n $XY_NAME  --never-fail                               --include-collaborators --run="secrets"  --dir .  -e $EXCLUDES

#Capturing end time in milliseconds
end_time=$(date +%s%3N)

#Calculating elapsed time in milliseconds
milli_time=$((end_time - start_time))

#Displaying elapsed time in milliseconds
echo "Elapsed time (milliseconds): $milli_time ms"
echo "Elapsed time (seconds): $(expr $milli_time / 1000) s"
secs=$(expr $milli_time / 1000)
expr $secs / 60


#Capturing end time in milliseconds
end_time=$(date +%s%3N)

#Calculating elapsed time in milliseconds
milli_time=$((end_time - start_time))

#Displaying elapsed time in milliseconds
echo "Elapsed time (milliseconds): $milli_time ms"
echo "Elapsed time (seconds): $(expr $milli_time / 1000) s"
secs=$(expr $milli_time / 1000)
expr $secs / 60


speaker-test -p 1 -P 2 -l 1
