#!/bin/bash
rsync -P --timeout=1800 -aWvH --stats --force --delete --delete-after --include='**/' --include='*/s4*/linux-qt/release/*' --include='*/s5*/linux-qt/release/*' --include='*/s6*/linux-qt/release/*' --include='*/s7*/android/release/*'  --exclude='*' rsync://rsync.netsol.su/update_netsol/ ./docker/tvipupdate

