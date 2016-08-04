# Calls artisan.
function artisan() {
    ( php artisan $* )
}

# Provides access to Homestead vagrant box.
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}
