#!/bin/bash

HOMEPAGE="https://github.com/rpm-software-management/modulemd-tools"


python3 repo2module/setup.py \
    --command-packages=click_man.commands man_pages \
    --target ./man \
    &> /dev/null


argparse-manpage \
    --pyfile dir2module/dir2module/dir2module.py \
    --function get_arg_parser \
    --author "Jakub Kadlčík" \
    --author-email "jkadlcik@redhat.com" \
    --project-name "dir2module" \
    --url HOMEPAGE \
    > ./man/dir2module.1


argparse-manpage \
    --pyfile createrepo_mod/createrepo_mod/createrepo_mod.py \
    --function get_arg_parser \
    --author "Jakub Kadlčík" \
    --author-email "jkadlcik@redhat.com" \
    --project-name "createrepo_mod" \
    --url HOMEPAGE \
    > ./man/createrepo_mod.1


argparse-manpage \
    --pyfile modulemd-merge/modulemd_merge/modulemd_merge.py \
    --function get_arg_parser \
    --author "Gerd v. Egidy" \
    --author-email "gerd.von.egidy@intra2net.com" \
    --project-name "modulemd-merge" \
    --url HOMEPAGE \
    > ./man/modulemd-merge.1


argparse-manpage \
    --pyfile modulemd-generate-macros/modulemd-generate-macros.py \
    --function get_arg_parser \
    --author "Jakub Kadlčík" \
    --author-email "jkadlcik@redhat.com" \
    --project-name "modulemd-generate-macros" \
    --url HOMEPAGE \
    > ./man/modulemd-generate-macros.1
