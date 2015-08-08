function vim-update --description "Update vim plugins"
  vim +BundleInstall! +BundleClean +qall
end
