function load_dotenv() {
  if (( $# == 0 ))
  then echo usage: load_dotenv filename; fi

  DOTFILE=$1
  if [ -f $DOTFILE ]; then
    export $(cat $DOTFILE | sed 's/#.*//g' | xargs)
  else
    echo "File ${DOTFILE} does not exists"
  fi
}

tcc() { tmux -CC new-session -A -s main; }
