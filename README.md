Howto package this multi-versions package:

    mkdir -p build-dir/opt/rdiff-backup
    wget -P build-dir/opt/rdiff-backup http://download.savannah.gnu.org/releases/rdiff-backup/rdiff-backup-1.0.5.tar.gz
    wget -P build-dir/opt/rdiff-backup http://download.savannah.gnu.org/releases/rdiff-backup/rdiff-backup-1.2.8.tar.gz
    tar xvzf build-dir/opt/rdiff-backup/rdiff-backup-1.0.5.tar.gz -C build-dir/opt/rdiff-backup
    tar xvzf build-dir/opt/rdiff-backup/rdiff-backup-1.2.8.tar.gz -C build-dir/opt/rdiff-backup
    ...

    rm -fR build-dir/opt/rdiff-backup/*.tar.gz
    fpm -s dir -t deb -v 0.1 -n rdiff-backup-multi-version --after-install postinstall.sh --iteration 1 --description "rdiff-backup multi version" -C build-dir .

