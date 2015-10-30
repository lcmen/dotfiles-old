function tags --description 'Update ctags'
  ctags .
  env RBENV_VERSION=$RUBY rbenv exec ripper-tags -R --extra=q --exclude vendor/ -f ./rtags .
end

