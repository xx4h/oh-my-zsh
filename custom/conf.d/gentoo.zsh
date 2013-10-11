if [ "$UID" = "0" ]; then
    alias bigupdate='emerge -avuDN --with-bdeps=y --keep-going world'
fi
