#!/usr/bin/env bash
src="cmuparlay--pbbsbench"
out="$HOME/Logs/$src.log"
ulimit -s unlimited
printf "" > "$out"

# Download source code
if [[ "$DOWNLOAD" != "0" ]]; then
  rm -rf $src
  git clone https://github.com/wolfram77/$src
  cd $src && git submodule update --init --recursive && cd -
fi
cd $src

# Build and run
make -j32

perform() {
# cmd=$1
# ext=$2
# stdbuf --output=L $cmd ~/Data/indochina-2004$ext  2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/uk-2002$ext         2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/arabic-2005$ext     2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/uk-2005$ext         2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/webbase-2001$ext    2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/it-2004$ext         2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/sk-2005$ext         2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/com-LiveJournal$ext 2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/com-Orkut$ext       2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/asia_osm$ext        2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/europe_osm$ext      2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/kmer_A2a$ext        2>&1 | tee -a "$out"
# stdbuf --output=L $cmd ~/Data/kmer_V1r$ext        2>&1 | tee -a "$out"
}
