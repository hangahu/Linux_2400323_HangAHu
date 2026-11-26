# BÀI THỰC HÀNH LINUX

## 1. Thông tin sinh viên

- **Họ và tên:** Hảng A Hù
- **Mã sinh viên:** 2400323
- **Lớp:** K2828_CNTT

## 2. Giới thiệu bài thực hành

Bài thực hành Linux giúp sinh viên làm quen với hệ điều hành Linux, quản lý tệp và thư mục, phân quyền truy cập, lập trình Shell Script và quản lý mã nguồn bằng Git, GitHub.

## 3. Cấu trúc thư mục

```text
2400323_HangAHu_Linux/
├── README.md
├── data/
│   └── sinhvien.txt
├── scripts/
│   ├── hethong.sh
│   ├── quanlysv.sh
│   └── saoluu.sh
├── logs/
│   ├── hethong.log
│   └── backup.log
└── backup/
    └── backup_YYYYMMDD_HHMMSS.tar.gz
```

## 4. Mô tả chức năng các chương trình

### 4.1. hethong.sh

- Hiển thị tên người dùng và tên máy tính.
- Hiển thị ngày giờ hiện tại.
- Hiển thị phiên bản Linux Kernel.
- Kiểm tra dung lượng RAM và ổ đĩa.
- Kiểm tra kết nối mạng bằng lệnh ping.
- Ghi kết quả vào logs/hethong.log.

### 4.2. quanlysv.sh

- Hiển thị danh sách sinh viên.
- Tìm kiếm sinh viên theo mã.
- Thống kê sinh viên đạt và không đạt.
- Tính điểm trung bình.
- Hiển thị sinh viên có điểm cao nhất.
- Sắp xếp sinh viên theo điểm giảm dần.

### 4.3. saoluu.sh

- Kiểm tra sự tồn tại của thư mục data.
- Nén thư mục data bằng lệnh tar.
- Lưu file sao lưu vào thư mục backup.
- Ghi thời gian và trạng thái sao lưu vào logs/backup.log.
- Hiển thị danh sách các file sao lưu.

## 5. Hướng dẫn sử dụng

Di chuyển vào thư mục bài thực hành:

```bash
cd ~/2400323_HangAHu_Linux
```

### 5.1. Cấp quyền thực thi

```bash
chmod +x scripts/hethong.sh
chmod +x scripts/quanlysv.sh
chmod +x scripts/saoluu.sh
```

### 5.2. Chạy chương trình kiểm tra hệ thống

```bash
./scripts/hethong.sh 2>&1 | tee logs/hethong.log
```

### 5.3. Chạy chương trình quản lý sinh viên

```bash
./scripts/quanlysv.sh
```

### 5.4. Chạy chương trình sao lưu

```bash
./scripts/saoluu.sh
```

## 6. Phân quyền tệp dữ liệu

Phân quyền file sinhvien.txt theo yêu cầu:

```bash
chmod 640 data/sinhvien.txt
```

Quyền truy cập:
- Chủ sở hữu: Đọc và ghi.
- Nhóm: Chỉ đọc.
- Người dùng khác: Không có quyền truy cập.

## 7. Công cụ sử dụng

- Hệ điều hành: Linux (Ubuntu trên WSL).
- Ngôn ngữ: Bash Shell Script.
- Công cụ quản lý mã nguồn: Git.
- Nền tảng lưu trữ mã nguồn: GitHub.

## 8. Kết luận

Hoàn thành bài thực hành Linux với các nội dung quản lý tệp và thư mục, phân quyền, lập trình Shell Script, sao lưu dữ liệu và quản lý mã nguồn bằng Git, GitHub.
