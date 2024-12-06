package asmht.demo.controller;

import asmht.demo.entity.SanPham;
import asmht.demo.repository.SanPhamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/api/sp")
public class SanPhamController {
    @Autowired
    private SanPhamRepository sprp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstKT", sprp.findAll());
        return "/sanpham";
    }

    @PostMapping("them")
    public String them(SanPham h) {
        sprp.save(h);
        return "redirect:/api/sp/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", sprp.findById(id).get());
        return "/hienthi/htSP";
    }

    @PostMapping("/update")
    public String updateCTSP(SanPham h) {
        sprp.save(h);
        return "redirect:/api/sp/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        sprp.deleteById(id);
        return "redirect:/api/sp/ht";
    }
}
