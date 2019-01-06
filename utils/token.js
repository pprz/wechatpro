// 引用使用es6的module引入和定义
// 全局变量以g_开头
// 私有函数以_开头

import { Config } from 'config.js';

class Token {
    constructor(role) {
        this.verifyUrl = Config.restUrl + 'token/verify';
        if(role!=''){
          this.tokenUrl = Config.restUrl + 'token/' + role;
        }else{
        this.tokenUrl = Config.restUrl + 'token/user'; 
        }
    }


    verify() {
        var token = wx.getStorageSync('token');
      console.log('verify token', token);
        if (!token) {
            this.getTokenFromServer();
        }
        else {
            this._veirfyFromServer(token);
        } 
    }

    _veirfyFromServer(token) {
      console.log('_veirfyFromServer');
        var that = this;
        wx.request({
            url: that.verifyUrl,
            method: 'POST',
            data: {
                token: token
            },
            success: function (res) {
                var valid = res.data.isValid;
                if(!valid){
                    that.getTokenFromServer();
                }
            }
        })
    }

    getTokenFromServer(callBack) {
        var that  = this;
      console.log('~~~~~~~~~~~~~~~~~~~~~getTokenFromServer', that.tokenUrl);
        wx.login({
            success: function (res) {
                wx.request({
                    url: that.tokenUrl,
                    method:'POST',
                    data:{
                        code:res.code
                    },
                    success:function(res){
                      console.log('getTokenFromServer', res.data.token);
                        wx.setStorageSync('token', res.data.token);
                        callBack&&callBack(res.data.token);
                    }
                })
            }
        })
    }
}

export {Token};