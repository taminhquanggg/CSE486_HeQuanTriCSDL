using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class PHIEU_MUON_CHI_TIET
    {
        public PHIEU_MUON_CHI_TIET(int maPhieu, int maSach, int soLuong, bool thanhToan, DateTime ngayTra, double tienPhat)
        {
            MaPhieu = maPhieu;
            MaSach = maSach;
            SoLuong = soLuong;
            ThanhToan = thanhToan;
            NgayTra = ngayTra;
            TienPhat = tienPhat;
        }

        public PHIEU_MUON_CHI_TIET(int maPhieu, int maSach, int soLuong)
        {
            MaPhieu = maPhieu;
            MaSach = maSach;
            SoLuong = soLuong;
        }

        public int MaPhieu { get; set; }
        public int MaSach { get; set; }
        public int SoLuong { get; set; }
        public bool ThanhToan { get; set; }
        public DateTime NgayTra { get; set; }
        public double TienPhat { get; set; }
    }
}
