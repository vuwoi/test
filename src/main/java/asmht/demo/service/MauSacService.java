package asmht.demo.service;

import asmht.demo.entity.MauSac;
import asmht.demo.repository.MauSacRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MauSacService {
    @Autowired
    private MauSacRepository mauSacRepository;

    public List<MauSac> getAllMauSacs() {
        return mauSacRepository.findAll();
    }

    public MauSac getMauSacById(Integer id) {
        return mauSacRepository.findById(id).orElse(null);
    }

    public MauSac saveMauSac(MauSac mauSac) {
        return mauSacRepository.save(mauSac);
    }

    public void deleteMauSac(Integer id) {
        mauSacRepository.deleteById(id);
    }
}
