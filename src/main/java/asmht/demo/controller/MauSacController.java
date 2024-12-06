package asmht.demo.controller;

import asmht.demo.entity.KichThuoc;
import asmht.demo.entity.MauSac;
import asmht.demo.repository.KichThuocRepository;
import asmht.demo.repository.MauSacRepository;
import asmht.demo.service.MauSacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api/ms")
public class MauSacController {
    @Autowired
    private MauSacRepository msrp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstKT", msrp.findAll());
        return "/mausac";
    }

    @PostMapping("them")
    public String them(MauSac h) {
        msrp.save(h);
        return "redirect:/api/ms/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", msrp.findById(id).get());
        return "/hienthi/htMS";
    }

    @PostMapping("/update")
    public String updateCTSP(MauSac h) {
        msrp.save(h);
        return "redirect:/api/ms/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        msrp.deleteById(id);
        return "redirect:/api/ms/ht";
    }
}
