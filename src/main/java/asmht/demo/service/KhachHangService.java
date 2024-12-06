package asmht.demo.service;

import asmht.demo.entity.KhachHang;
import asmht.demo.repository.KhachHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KhachHangService {
    @Autowired
    private KhachHangRepository khachHangRepository;

    public List<KhachHang> getAllKhachHangs() {
        return khachHangRepository.findAll();
    }

    public KhachHang getKhachHangById(Integer id) {
        return khachHangRepository.findById(id).orElse(null);
    }

    public KhachHang saveKhachHang(KhachHang khachHang) {
        return khachHangRepository.save(khachHang);
    }

    public void deleteKhachHang(Integer id) {
        khachHangRepository.deleteById(id);
    }
}
