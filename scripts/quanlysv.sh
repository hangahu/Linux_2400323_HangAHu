
#!/bin/bash

DATA="$HOME/2400323_HangAHu_Linux/data/sinhvien.txt"

# Kiem tra file du lieu
if [ ! -f "$DATA" ]; then
    echo "Khong tim thay file du lieu sinh vien!"
    exit 1
fi

while true
do
    echo ""
    echo "===== CHUONG TRINH QUAN LY SINH VIEN ====="
    echo "1. Hien thi danh sach sinh vien"
    echo "2. Tim kiem sinh vien theo ma"
    echo "3. Thong ke sinh vien dat va khong dat"
    echo "4. Tinh diem trung binh"
    echo "5. Hien thi sinh vien co diem cao nhat"
    echo "6. Sap xep sinh vien theo diem giam dan"
    echo "0. Thoat chuong trinh"

    read -p "Nhap lua chon: " chon

    case "$chon" in
        1)
            echo "DANH SACH SINH VIEN:"
            cat "$DATA"
            ;;

        2)
            read -p "Nhap ma sinh vien: " ma
            ketqua=$(grep -i "^${ma}," "$DATA")

            if [ -n "$ketqua" ]; then
                echo "$ketqua"
            else
                echo "Khong tim thay sinh vien!"
            fi
            ;;

        3)
            dat=$(awk -F, '$3 >= 5 {dem++} END {print dem+0}' "$DATA")
            khongdat=$(awk -F, '$3 < 5 {dem++} END {print dem+0}' "$DATA")

            echo "So sinh vien dat: $dat"
            echo "So sinh vien khong dat: $khongdat"
            ;;

        4)
            awk -F, '{tong += $3; dem++}
            END {
                if (dem > 0)
                    printf "Diem trung binh: %.2f\n", tong/dem
            }' "$DATA"
            ;;

        5)
            sort -t, -k3,3nr "$DATA" | head -n 1
            ;;

        6)
            echo "DANH SACH SINH VIEN THEO DIEM GIAM DAN:"
            sort -t, -k3,3nr "$DATA"
            ;;

        0)
            echo "Thoat chuong trinh!"
            break
            ;;

        *)
            echo "Lua chon khong hop le! Vui long nhap lai."
            ;;
    esac
done
