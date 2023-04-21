using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class THE_TV
    {

        public THE_TV(int MaDocGia, int MaLoaiThe, DateTime NgayCap, DateTime NgayHetHan, double SoDu)
        {
            this.MaDocGia = MaDocGia;
            this.MaLoaiThe = MaLoaiThe;
            this.NgayCap = NgayCap;
            this.NgayHetHan = NgayHetHan;
            this.SoDu = SoDu;
        }

        public int MaThe { get; set; }
        public int MaDocGia { get; set; }
        public int MaLoaiThe { get; set; }
        public DateTime NgayCap { get; set; }
        public DateTime NgayHetHan { get; set; }
        public double SoDu { get; set; }
    }
}
