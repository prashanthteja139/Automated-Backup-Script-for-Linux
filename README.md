# 🗂️ Linux Automated Backup Script

A Bash-based automation that backs up directories into compressed `.tar.gz` files with timestamps and automatically cleans up old backups.

---

## 🚀 Features
- Automatically backs up important directories
- Compresses files to save space
- Adds timestamps for versioning
- Deletes backups older than 7 days
- Simple to schedule with `cron`

---

## ⚙️ Usage
1. Edit the script and update the source directory:
   ```bash
   SOURCE_DIR="/path/to/your/folder"
2. Make the script executable:

chmod +x backup_script.sh

3. Run the script:

./backup_script.sh

4. (Optional) Schedule daily backups via cron:

crontab -e
0 2 * * * /path/to/backup_script.sh
