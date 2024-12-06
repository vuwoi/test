package asmht.demo.service;

import asmht.demo.entity.HoaDon;
import asmht.demo.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HoaDonService {
    @Autowired
    private HoaDonRepository hoaDonRepository;

    public List<HoaDon> getAllHoaDons() {
        return hoaDonRepository.findAll();
    }

    public HoaDon getHoaDonById(Integer id) {
        return hoaDonRepository.findById(id).orElse(null);
    }

    public HoaDon saveHoaDon(HoaDon hoaDon) {
        return hoaDonRepository.save(hoaDon);
    }

    public void deleteHoaDon(Integer id) {
        hoaDonRepository.deleteById(id);
    }
}
