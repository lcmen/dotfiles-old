function empty-trash --description 'Empty all trashes'
  sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash
end
