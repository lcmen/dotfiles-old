function postgres-unlock --description 'Unlock Postgres PID file by removing it'
  brew services stop postgresql
  rm /usr/local/var/postgres/postmaster.pid
  brew services start postgresql
end
