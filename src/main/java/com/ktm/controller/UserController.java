package com.ktm.controller;


import com.ktm.model.User;
import com.ktm.result.Result;
import com.ktm.service.UserService;
import com.ktm.utils.VerifyCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;


    @GetMapping("/getImage")
    public void getImage(HttpSession session, HttpServletResponse response) throws IOException {

        String code = VerifyCodeUtils.generateVerifyCode(4);

        session.setAttribute("code", code);

        VerifyCodeUtils.outputImage(220,60,response.getOutputStream(),code);

    }


    @PostMapping("/register")
    @ResponseBody
    public Result register(User user, @RequestParam(name = "code") String code, HttpSession session) {
        Result result = new Result();
        try {
            String imageCode = (String) session.getAttribute("code");
            if (imageCode.equals(code)) {
                userService.register(user);
                result.setMessage("success");
                result.setStatus(true);
                return result;
            } else {
                throw new RuntimeException("注册失败:验证码错误");
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
            result.setMessage(e.getMessage());
            result.setStatus(false);

        }
        return result;
    }


}
