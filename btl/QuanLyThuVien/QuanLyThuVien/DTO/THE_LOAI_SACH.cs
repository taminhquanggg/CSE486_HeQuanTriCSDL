using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class THE_LOAI_SACH
    {
        public int MaTheLoai { get; set; }

        public string TenTheLoai { get; set; }

        public string MoTa { get; set; }

        public THE_LOAI_SACH(int MaTheLoai, string TenTheLoai, string MoTa)
        {
            this.MaTheLoai = MaTheLoai;
            this.TenTheLoai = TenTheLoai;
            this.MoTa = MoTa;
        }

        public THE_LOAI_SACH(DataRow row)
        {
            this.MaTheLoai = (int)row["MaTheLoai"];
            this.TenTheLoai = row["TenTheLoai"].ToString();
            this.MoTa = row["MoTa"].ToString();
        }
    }
}
