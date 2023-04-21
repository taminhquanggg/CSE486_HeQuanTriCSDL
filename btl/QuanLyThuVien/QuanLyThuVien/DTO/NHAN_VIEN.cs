using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class NHAN_VIEN
    {
        public int MaNV { get; set; }
        public string TenNV { get; set; }
        public DateTime NgaySinh { get; set; }
        public string GioiTinh { get; set; }
        public string SDT { get; set; }
        public string DiaChi { get; set; }
    }
}
