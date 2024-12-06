package asmht.demo.service;

import asmht.demo.entity.HoaDonChiTiet;
import asmht.demo.repository.HoaDonChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonChiTietService {
    @Autowired
    private HoaDonChiTietRepository hoaDonChiTietRepository;

    public List<HoaDonChiTiet> getAllHoaDonChiTiets() {
        return hoaDonChiTietRepository.findAll();
    }

    public HoaDonChiTiet getHoaDonChiTietById(Integer id) {
        return hoaDonChiTietRepository.findById(id).orElse(null);
    }

    public HoaDonChiTiet saveHoaDonChiTiet(HoaDonChiTiet hoaDonChiTiet) {
        return hoaDonChiTietRepository.save(hoaDonChiTiet);
    }

    public void deleteHoaDonChiTiet(Integer id) {
        hoaDonChiTietRepository.deleteById(id);
    }
}
