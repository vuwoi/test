package asmht.demo.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/api")
public class dnController {
    @PostMapping("/login")
    public String login(@RequestParam("tenDN") String tenDN,
                        @RequestParam("matKhau") String matKhau, Model model){
        if ("admin".equals(tenDN)&& "1".equals(matKhau)){
            return "redirect:/api";
        }else {
            model.addAttribute("error","Tên đăng nhập hoặc mật khẩu không đúng");
            return "/login";
        }
    }
}
