function tags --description 'Update ctags'
  ctags --extra=+q -n -R .
end

