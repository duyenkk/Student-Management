create database app2101_N
use app2101_N

CREATE TABLE NhanVien (
    Ma NVARCHAR(50) PRIMARY KEY,      -- Mã nhân viên
    HoTen NVARCHAR(100) NOT NULL,     -- Họ tên nhân viên
    NgaySinh DATE NOT NULL,            -- Ngày sinh
    HeSoLuong FLOAT NOT NULL,          -- Hệ số lương
    LuongCoBan FLOAT NOT NULL,         -- Lương cơ bản
    Luong AS (HeSoLuong * LuongCoBan)  -- Lương được tính toán từ hệ số lương và lương cơ bản
);

CREATE TABLE SinhVien (
    Ma NVARCHAR(50) PRIMARY KEY,          -- Mã sinh viên
    Ho NVARCHAR(100) NOT NULL,            -- Họ sinh viên
    Ten NVARCHAR(100) NOT NULL,           -- Tên sinh viên
    NgaySinh DATE NOT NULL,                -- Ngày sinh
    GioiTinh NVARCHAR(10) NOT NULL,       -- Giới tính
    MaKhoa NVARCHAR(50) NOT NULL           -- Mã khoa
);
INSERT INTO SinhVien (Ma, Ho, Ten, NgaySinh, GioiTinh, MaKhoa) VALUES 
('030238220030', 'Lương Thị', 'Mỹ Duyên', '2000-12-15', 'Nữ', 'DH38KH01'),
('030238220250', 'Trần Trịnh', 'Gia Thuỷ', '2011-03-03', 'Nam', 'DH38KH01'),
('030238220308', 'Nguyễn Trần', 'Ái Vy', '2003-12-12', 'Nữ', 'DH38KH01');



