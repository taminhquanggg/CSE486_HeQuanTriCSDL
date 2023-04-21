using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class NHA_XUAT_BAN
    {
        public int MaNXB { get; set; }

        public string TenNXB { get; set; }

        public string SDT { get; set; }

        public string DiaChi { get; set; }
        public NHA_XUAT_BAN(int MaNXB, string TenNXB, string SDT, string DiaChi)
        {
            this.MaNXB = MaNXB;
            this.TenNXB = TenNXB;
            this.SDT = SDT;
            this.DiaChi = DiaChi;
        }

        public NHA_XUAT_BAN(string TenNXB, string SDT, string DiaChi)
        {
            this.TenNXB = TenNXB;
            this.SDT = SDT;
            this.DiaChi = DiaChi;
        }

        public NHA_XUAT_BAN(DataRow row)
        {
            this.MaNXB = (int)row["MaNXB"];
            this.TenNXB = row["TenNXB"].ToString();
            this.SDT = row["SDT"].ToString();
            this.DiaChi = row["DiaChi"].ToString();
        }
    }
}
