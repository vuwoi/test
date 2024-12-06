package asmht.demo.controller;

import asmht.demo.entity.HoaDon;
import asmht.demo.repository.HoaDonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping("/api/hd")
public class HoaDonController {
    @Autowired
    private HoaDonRepository hdrp;

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstHD", hdrp.findAll());
        return "/hoadon";
    }

    @PostMapping("them")
    public String them(HoaDon h) {
        hdrp.save(h);
        return "redirect:/api/hd/ht";
    }
    @GetMapping("/update/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", hdrp.findById(id).get());
        return "/hienthi/htHD";
    }

    @PostMapping("/update")
    public String updateCTSP(HoaDon h) {
        hdrp.save(h);
        return "redirect:/api/hd/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        hdrp.deleteById(id);
        return "redirect:/api/hd/ht";
    }
}

