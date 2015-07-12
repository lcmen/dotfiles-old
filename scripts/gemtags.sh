start=$(pwd)

# Remove existing file
if [ -e gem.tags ]; then
  echo "Gem tags already exists, removing"
  rm gem.tags
fi;

# Find absolute paths and remove current directory
gems=$(bundle show --paths | grep "$start" | sed "s|$start/||g" | sed '/bundler/d')

# Generate ctags for every gem
for gem in $gems; do
  ctags -n -a -f gem.tags ./$gem
done
