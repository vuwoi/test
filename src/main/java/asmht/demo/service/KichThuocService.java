package asmht.demo.service;

import asmht.demo.entity.KichThuoc;
import asmht.demo.repository.KichThuocRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class KichThuocService {
    @Autowired
    private KichThuocRepository kichThuocRepository;

    public List<KichThuoc> getAllKichThuocs() {
        return kichThuocRepository.findAll();
    }

    public KichThuoc getKichThuocById(Integer id) {
        return kichThuocRepository.findById(id).orElse(null);
    }

    public KichThuoc saveKichThuoc(KichThuoc kichThuoc) {
        return kichThuocRepository.save(kichThuoc);
    }

    public void deleteKichThuoc(Integer id) {
        kichThuocRepository.deleteById(id);
    }
}

