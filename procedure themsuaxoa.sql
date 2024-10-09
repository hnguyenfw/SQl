--khach hang 
--sua
CREATE PROCEDURE SuaKhachHang
    @SDT VARCHAR(10),
    @Ho_Ten NVARCHAR(100)
AS
BEGIN
    UPDATE Khach_Hang
    SET Ho_Ten = @Ho_Ten
    WHERE SDT = @SDT;
END;
--xoa
    @SDT VARCHAR(10)
AS
BEGIN
    DELETE FROM Khach_Hang
    WHERE SDT = @SDT;
END;
--them
CREATE PROCEDURE ThemKhachHang
    @SDT VARCHAR(10),
    @Ho_Ten NVARCHAR(100)
AS
BEGIN
    INSERT INTO Khach_Hang (SDT, Ho_Ten)
    VALUES (@SDT, @Ho_Ten);
END;
--nhan vien
CREATE PROCEDURE ThemNhanVien
    @Ho_Ten NVARCHAR(100),
    @Chuc_Vu NVARCHAR(50),
    @SDT VARCHAR(10),
    @MatKhau CHAR(100)
AS
BEGIN
    INSERT INTO Nhan_Vien (Ho_Ten, Chuc_Vu, SDT, MatKhau)
    VALUES (@Ho_Ten, @Chuc_Vu, @SDT, @MatKhau);
END;
CREATE PROCEDURE SuaNhanVien
    @Id_NhanVien INT,
    @Ho_Ten NVARCHAR(100),
    @Chuc_Vu NVARCHAR(50),
    @SDT VARCHAR(10),
    @MatKhau CHAR(100)
AS
BEGIN
    UPDATE Nhan_Vien
    SET Ho_Ten = @Ho_Ten, Chuc_Vu = @Chuc_Vu, SDT = @SDT, MatKhau = @MatKhau
    WHERE Id_NhanVien = @Id_NhanVien;
END;
CREATE PROCEDURE XoaNhanVien
    @Id_NhanVien INT
AS
BEGIN
    DELETE FROM Nhan_Vien
    WHERE Id_NhanVien = @Id_NhanVien;
END;
CREATE PROCEDURE XoaNhanVien
    @Id_NhanVien INT
AS
BEGIN
    DELETE FROM Nhan_Vien
    WHERE Id_NhanVien = @Id_NhanVien;
END;

--mon an
CREATE PROCEDURE ThemMonAn
    @Id_DanhMuc INT,
    @Ten NVARCHAR(100),
    @MoTa NVARCHAR(255),
    @Gia DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO MonAn (Id_DanhMuc, Ten, MoTa, Gia)
    VALUES (@Id_DanhMuc, @Ten, @MoTa, @Gia);
END;
CREATE PROCEDURE SuaMonAn
    @Id_MonAn INT,
    @Id_DanhMuc INT,
    @Ten NVARCHAR(100),
    @MoTa NVARCHAR(255),
    @Gia DECIMAL(18, 2)
AS
BEGIN
    UPDATE MonAn
    SET Id_DanhMuc = @Id_DanhMuc, Ten = @Ten, MoTa = @MoTa, Gia = @Gia
    WHERE Id_MonAn = @Id_MonAn;
END;
CREATE PROCEDURE XoaMonAn
    @Id_MonAn INT
AS
BEGIN
    DELETE FROM MonAn
    WHERE Id_MonAn = @Id_MonAn;
END;
-- donhang
CREATE PROCEDURE ThemDonHang
    @SDT_KhachHang VARCHAR(10),
    @Id_NhanVien INT,
    @PhuongThucThanhToan NVARCHAR(50),
    @Id_Ban INT,
    @NgayGio DATETIME,
    @TongTien DECIMAL(18, 2),
    @TrangThai NVARCHAR(50)
AS
BEGIN
    INSERT INTO Don_Hang (SDT_KhachHang, Id_NhanVien, PhuongThucThanhToan, Id_Ban, NgayGio, TongTien, TrangThai)
    VALUES (@SDT_KhachHang, @Id_NhanVien, @PhuongThucThanhToan, @Id_Ban, @NgayGio, @TongTien, @TrangThai);
END;
CREATE PROCEDURE SuaDonHang
    @Id_DonHang INT,
    @SDT_KhachHang VARCHAR(10),
    @Id_NhanVien INT,
    @PhuongThucThanhToan NVARCHAR(50),
    @Id_Ban INT,
    @NgayGio DATETIME,
    @TongTien DECIMAL(18, 2),
    @TrangThai NVARCHAR(50)
AS
BEGIN
    UPDATE Don_Hang
    SET SDT_KhachHang = @SDT_KhachHang, Id_NhanVien = @Id_NhanVien, PhuongThucThanhToan = @PhuongThucThanhToan,
        Id_Ban = @Id_Ban, NgayGio = @NgayGio, TongTien = @TongTien, TrangThai = @TrangThai
    WHERE Id_DonHang = @Id_DonHang;
END;
CREATE PROCEDURE XoaDonHang
    @Id_DonHang INT
AS
BEGIN
    DELETE FROM Don_Hang
    WHERE Id_DonHang = @Id_DonHang;
END;
--danhmuuc
CREATE PROCEDURE XoaDanhMuc
    @Id_DanhMuc INT
AS
BEGIN
    DELETE FROM DanhMuc
    WHERE Id_DanhMuc = @Id_DanhMuc;
END;
CREATE PROCEDURE SuaDanhMuc
    @Id_DanhMuc INT,
    @Ten NVARCHAR(100),
    @MoTa NVARCHAR(255)
AS
BEGIN
    UPDATE DanhMuc
    SET Ten = @Ten, MoTa = @MoTa
    WHERE Id_DanhMuc = @Id_DanhMuc;
END;
CREATE PROCEDURE ThemDanhMuc
    @Ten NVARCHAR(100),
    @MoTa NVARCHAR(255)
AS
BEGIN
    INSERT INTO DanhMuc (Ten, MoTa)
    VALUES (@Ten, @MoTa);
END;
--chitietdonhang
CREATE PROCEDURE XoaChiTietDonHang
    @Id_ChiTietDonHang INT
AS
BEGIN
    DELETE FROM ChiTietDonHang
    WHERE Id_ChiTietDonHang = @Id_ChiTietDonHang;
END;
CREATE PROCEDURE SuaChiTietDonHang
    @Id_ChiTietDonHang INT,
    @Id_DonHang INT,
    @Id_MonAn INT,
    @SoLuong INT,
    @ThanhTien DECIMAL(18, 2)
AS
BEGIN
    UPDATE ChiTietDonHang
    SET Id_DonHang = @Id_DonHang, Id_MonAn = @Id_MonAn, SoLuong = @SoLuong, ThanhTien = @ThanhTien
    WHERE Id_ChiTietDonHang = @Id_ChiTietDonHang;
END;
CREATE PROCEDURE ThemChiTietDonHang
    @Id_DonHang INT,
    @Id_MonAn INT,
    @SoLuong INT,
    @ThanhTien DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO ChiTietDonHang (Id_DonHang, Id_MonAn, SoLuong, ThanhTien)
    VALUES (@Id_DonHang, @Id_MonAn, @SoLuong, @ThanhTien);
END;

