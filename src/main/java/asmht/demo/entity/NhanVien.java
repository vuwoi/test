package asmht.demo.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "nhan_vien")
public class NhanVien {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "ma_nv")
    private String maNV;

    @Column(name = "ten_dn")
    private String tenDangNhap;

    @Column(name = "mk")
    private String matKhau;

    @Column(name = "trang_thai")
    private Boolean trangThai;
}
