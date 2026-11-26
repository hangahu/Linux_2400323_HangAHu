
#!/bin/bash

# Khai bao duong dan
BASE="$HOME/2400323_HangAHu_Linux"
DATA="$BASE/data"
BACKUP="$BASE/backup"
LOG="$BASE/logs/backup.log"

# Lay thoi gian hien tai
THOIGIAN=$(date +"%Y%m%d_%H%M%S")

# Ten file sao luu
TENFILE="backup_${THOIGIAN}.tar.gz"

# Kiem tra thu muc data
if [ -d "$DATA" ]; then

    # Nen thu muc data
    if tar -czf "$BACKUP/$TENFILE" -C "$BASE" data; then
        TRANGTHAI="THANH CONG"
        echo "Sao luu thanh cong!"
    else
        TRANGTHAI="THAT BAI"
        echo "Sao luu that bai!"
    fi

else
    TENFILE="Khong co file sao luu"
    TRANGTHAI="THAT BAI"
    echo "Khong tim thay thu muc data!"
fi

# Ghi nhat ky sao luu
echo "$(date '+%Y-%m-%d %H:%M:%S') | $TENFILE | $TRANGTHAI" >> "$LOG"

# Hien thi danh sach file sao luu
echo ""
echo "DANH SACH FILE DA SAO LUU:"
ls -lh "$BACKUP"

