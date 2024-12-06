package asmht.demo.controller;

import asmht.demo.entity.SPChiTiet;
import asmht.demo.entity.SanPham;
import asmht.demo.repository.SPChiTietRepository;
import asmht.demo.repository.SanPhamRepository;
import asmht.demo.service.SPChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api/spctt")
public class SPChiTietController {
    @Autowired
    private SPChiTietRepository spctrp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstKT", spctrp.findAll());
        return "/spchitiet";
    }

    @PostMapping("them")
    public String them(SPChiTiet h) {
        spctrp.save(h);
        return "redirect:/api/spctt/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", spctrp.findById(id).get());
        return "/hienthi/ctsp";
    }

    @PostMapping("/update")
    public String updateCTSP(SPChiTiet h) {
        spctrp.save(h);
        return "redirect:/api/spctt/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        spctrp.deleteById(id);
        return "redirect:/api/spctt/ht";
    }
}
