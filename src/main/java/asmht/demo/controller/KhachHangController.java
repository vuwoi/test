package asmht.demo.controller;

import asmht.demo.entity.KhachHang;
import asmht.demo.repository.KhachHangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api/kh")
public class KhachHangController {
    @Autowired
    private KhachHangRepository khrp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstHD", khrp.findAll());
        return "/khachhang";
    }

    @PostMapping("them")
    public String them(KhachHang h) {
        khrp.save(h);
        return "redirect:/api/kh/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", khrp.findById(id).get());
        return "/hienthi/htKH";
    }

    @PostMapping("/update")
    public String updateCTSP(KhachHang h) {
        khrp.save(h);
        return "redirect:/api/kh/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        khrp.deleteById(id);
        return "redirect:/api/kh/ht";
    }
}

