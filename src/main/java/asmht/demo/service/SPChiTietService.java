package asmht.demo.service;

import asmht.demo.entity.SPChiTiet;
import asmht.demo.repository.SPChiTietRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SPChiTietService {
    @Autowired
    private SPChiTietRepository spChiTietRepository;

    public List<SPChiTiet> getAllSPChiTiets() {
        return spChiTietRepository.findAll();
    }

    public SPChiTiet getSPChiTietById(Integer id) {
        return spChiTietRepository.findById(id).orElse(null);
    }

    public SPChiTiet saveSPChiTiet(SPChiTiet spChiTiet) {
        return spChiTietRepository.save(spChiTiet);
    }

    public void deleteSPChiTiet(Integer id) {
        spChiTietRepository.deleteById(id);
    }
}
