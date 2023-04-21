using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyThuVien.DTO
{
    public class DOC_GIA
    {
        public DOC_GIA(int MaDocGia,string TenDocGia,DateTime NgaySinh,string GioiTinh,string SDT ,string DiaChi ) 
        {
            this.MaDocGia = MaDocGia;
            this.TenDocGia = TenDocGia;
            this.NgaySinh= NgaySinh;
            this.GioiTinh   = GioiTinh;
            this.SDT = SDT;
            this.DiaChi = DiaChi;
        }

        public DOC_GIA(string TenDocGia, DateTime NgaySinh, string GioiTinh, string SDT, string DiaChi)
        {
            this.TenDocGia = TenDocGia;
            this.NgaySinh = NgaySinh;
            this.GioiTinh = GioiTinh;
            this.SDT = SDT;
            this.DiaChi = DiaChi;
        }

        public int MaDocGia { get; set; }
        public string TenDocGia { get; set; }
        public DateTime NgaySinh { get; set; }
        public string GioiTinh { get; set; }
        public string SDT { get; set; }
        public string DiaChi { get; set; }
    }
}
