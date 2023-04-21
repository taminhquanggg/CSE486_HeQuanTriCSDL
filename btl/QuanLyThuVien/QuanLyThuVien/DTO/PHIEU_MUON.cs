using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class PHIEU_MUON
    {
        public PHIEU_MUON(int MaThe, int MaNV, DateTime NgayMuon, DateTime NgayHenTra)
        {
            this.MaThe = MaThe;
            this.MaNV = MaNV;
            this.NgayMuon = NgayMuon;
            this.NgayHenTra = NgayHenTra;
        }

        public int MaPhieu { get; set; }
        public int MaThe { get; set; }
        public int MaNV { get; set; }
        public DateTime NgayMuon { get; set; }
        public DateTime NgayHenTra { get; set; }
    }
}
