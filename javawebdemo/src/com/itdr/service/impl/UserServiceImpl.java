package com.itdr.service.impl;

import com.itdr.common.ResponseCode;
import com.itdr.dao.UserDao;
import com.itdr.pojo.Users;
import com.itdr.service.UserService;

public class UserServiceImpl implements UserService {
    private UserDao ud = new UserDao();

    @Override
    public ResponseCode<Users> login(String username, String password) {
//        //参数非空判断
//        if(username==null){
//            return ResponseCode.toDefeated("用户名不能为空！");
//        }
//        if(password==null){
//            return ResponseCode.toDefeated("密码不能为空！");
//        }
        Users users = ud.selectByUserNameAndPassword(username, password);
        //返回值null,说明用户不存在，登陆失败
        if(users == null){
            return ResponseCode.toDefeated("用户不存在");
        }
        //成功返回成功数据
        return ResponseCode.toSuccess(users);

    }
}
