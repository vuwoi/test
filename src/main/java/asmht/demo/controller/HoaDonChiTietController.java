package asmht.demo.controller;

import asmht.demo.entity.HoaDon;
import asmht.demo.entity.HoaDonChiTiet;
import asmht.demo.entity.SPChiTiet;
import asmht.demo.repository.HoaDonChiTietRepository;
import asmht.demo.repository.HoaDonRepository;
import asmht.demo.repository.SPChiTietRepository;
import asmht.demo.service.HoaDonChiTietService;
import asmht.demo.service.HoaDonService;
import asmht.demo.service.SPChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api/hdct")
public class HoaDonChiTietController {
    @Autowired
    private
    HoaDonChiTietRepository hdctrp;
    @Autowired
    private SPChiTietRepository spctrp;
    @Autowired
    private HoaDonRepository hdrp;

    @ModelAttribute("lstSPCT")
    List<SPChiTiet> getlstSPCT() {
        return spctrp.findAll();
    }

    @ModelAttribute("lstHD")
    List<HoaDon> getlstHD() {
        return hdrp.findAll();
    }

    @GetMapping("ht")
    public String htHD(Model model) {
        model.addAttribute("lstCTHD", hdctrp.findAll());
        return "/chitiethoadon";
    }

    @PostMapping("them")
    public String them(HoaDonChiTiet h) {
        hdctrp.save(h);
        return "redirect:/api/hdct/ht";
    }
    @GetMapping("/hienthi/{id}")
    public String showUpdate(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("h", hdctrp.findById(id).get());
        return "/hienthi/cthd";
    }

    @PostMapping("/update")
    public String updateCTSP(HoaDonChiTiet h) {
        hdctrp.save(h);
        return "redirect:/api/hdct/ht";
    }

    @GetMapping("/delete")
    public String deleteNgheSi(@RequestParam("id") int id) {
        hdctrp.deleteById(id);
        return "redirect:/api/hdct/ht";
    }
}

