package asmht.demo.controller;

import asmht.demo.entity.NhanVien;
import asmht.demo.repository.NhanVienRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api/nv")
public class NhanVienController {
    @Autowired
    private NhanVienRepository nvrp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstKT", nvrp.findAll());
        return "/nhanvien";
    }

    @PostMapping("them")
    public String them(NhanVien h) {
        nvrp.save(h);
        return "redirect:/api/nv/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", nvrp.findById(id).get());
        return "/hienthi/htNV";
    }

    @PostMapping("/update")
    public String updateCTSP(NhanVien h) {
        nvrp.save(h);
        return "redirect:/api/nv/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        nvrp.deleteById(id);
        return "redirect:/api/nv/ht";
    }
}

