using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class TAC_GIA
    {
        public int MaTacGia { get; set; }

        public string TenTacGia { get; set; }

        public string TieuSu { get; set; }


        public TAC_GIA(int MaTacGia, string TenTacGia, string TieuSu)
        {
            this.MaTacGia = MaTacGia;
            this.TenTacGia = TenTacGia;
            this.TieuSu = TieuSu;
        }

        public TAC_GIA(DataRow row)
        {
            this.MaTacGia = (int)row["MaTacGia"];
            this.TenTacGia = row["TenTacGia"].ToString();
            this.TieuSu = row["TieuSu"].ToString();
        }
    }
}
