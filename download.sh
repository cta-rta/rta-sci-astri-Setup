#!/usr/bin/env bash
#First parameter: git username
#Second parameter: -t -> do not use tags

trap exit ERR
echo $2
if [ "$2" != "-t" ] ; then
	echo "USE TAGS"
  TAG_PIPEMANAGER="v1.0.0"
  TAG_GAMMAPIPECOMMON="v1.0.0"
  TAG_CTAGAMMAPIPECOMMON="v1.0.0"
  TAG_CTOOLSINT="v1.0.0"
  TAG_SCIGUI="v1.0.0"
  TAG_ASTRI_BOOTS="v1.0.0"
  TAG_ASTRI_RTALIB="v1.0.0"
fi

echo "--------------"
git clone https://$1@github.com/rta-pipe/pipeline_manager.git
cd pipeline_manager
if [ "$2" != "-t" ]; then
	git checkout $TAG_PIPEMANAGER
else
	echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/rta-pipe/GammaPipeCommon.git
cd GammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_GAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/cta-rta/CTAGammaPipeCommon.git
cd CTAGammaPipeCommon
if [ "$2" != "-t" ]; then
        git checkout $TAG_CTAGAMMAPIPECOMMON
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/cta-rta/ctoolsint.git
cd ctoolsint
if [ "$2" != "-t" ]; then
        git checkout $TAG_CTOOLSINT
else
        echo "Use master version"
fi
cd ..


echo "--------------"
git clone https://$1@github.com/cta-rta/ScientificGUI.git
cd ScientificGUI
if [ "$2" != "-t" ]; then
        git checkout $TAG_SCIGUI
else
        echo "Use master version"
fi
cd ..


echo "--------------"
git clone https://$1@github.com/cta-rta/astri-rta-bootstrapper.git
cd astri-rta-bootstrapper
if [ "$2" != "-t" ]; then
        git checkout $TAG_ASTRI_BOOTS
else
        echo "Use master version"
fi
cd ..

echo "--------------"
git clone https://$1@github.com/rta-pipe/RTAlib.git
cd RTAlib
if [ "$2" != "-t" ]; then
        git checkout $TAG_ASTRI_RTALIB
else
        echo "Use master version"
fi
cd .. 
