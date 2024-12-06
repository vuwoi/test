package asmht.demo.controller;

import asmht.demo.entity.KichThuoc;
import asmht.demo.repository.KichThuocRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/api/kt")
public class KichThuocController {
    @Autowired
    private KichThuocRepository ktrp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstKT", ktrp.findAll());
        return "/kichthuoc";
    }

    @PostMapping("them")
    public String them(KichThuoc h) {
        ktrp.save(h);
        return "redirect:/api/kt/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", ktrp.findById(id).get());
        return "/hienthi/htKT";
    }

    @PostMapping("/update")
    public String updateCTSP(KichThuoc h) {
        ktrp.save(h);
        return "redirect:/api/kt/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        ktrp.deleteById(id);
        return "redirect:/api/kt/ht";
    }
}

