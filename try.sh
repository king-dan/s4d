#!/bin/bash
set -e

for var in "$@"
do
	cd ~/git/defold/engine/$var
	waf install
done

#waf install
#cd ~/git/defold/engine/render
#waf install
#cd ~/git/defold/engine/gamesys
#waf install
cd ~/git/defold/engine/engine
waf clean && waf install
