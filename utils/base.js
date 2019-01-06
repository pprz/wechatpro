
import { Token } from 'token.js';
import { Config } from 'config.js';

class Base {
  constructor() {
    "use strict";
    this.baseRestUrl = Config.restUrl;
    this.onPay = Config.onPay;
  }

  //http 请求类, 当noRefech为true时，不做未授权重试机制
  request(params, noRefetch) {
    var that = this,
      url = this.baseRestUrl + params.url;
    if (!params.type) {
      params.type = 'get';
    }
    /*不需要再次组装地址*/
    if (params.setUpUrl == false) {
      url = params.url;
    }
    console.log('Current token', wx.getStorageSync('token'));
    wx.request({
      url: url,
      data: params.data,
      method: params.type,
      header: {
        'content-type': 'application/json',
        'token': wx.getStorageSync('token')
      },
      success: function (res) {
        // 判断以2（2xx)开头的状态码为正确
        // 异常不要返回到回调中，就在request中处理，记录日志并showToast一个统一的错误即可
        var code = res.statusCode.toString();
        var startChar = code.charAt(0);
        if (startChar == '2') {
          params.sCallback && params.sCallback(res.data);
        } else {
          if (code == '401') {
            //noRefetch无法再次重发
            if (!noRefetch) {
              that._refetch(params);
            }
          }
          that._processError(res);
          params.eCallback && params.eCallback(res.data);
        }
      },
      fail: function (err) {
        //wx.hideNavigationBarLoading();
        that._processError(err);
        // params.eCallback && params.eCallback(err);
      }
    });
  }

  _processError(err) {
    console.log(err);
  }

  _refetch(param) {
    var token = new Token();
    token.getTokenFromServer((token) => {
      this.request(param, true);
    });
  }

  /*获得元素上的绑定的值*/
  getDataSet(event, key) {
    return event.currentTarget.dataset[key];
  }

    // 事件处理
    /**************************************时间格式化处理************************************/
dateFtt(fmt, date) {  
  var o = {
    "M+": date.getMonth() + 1,              
    "d+": date.getDate(),                   
    "h+": date.getHours(),                   
    "m+": date.getMinutes(),                  
    "s+": date.getSeconds(),                
    "q+": Math.floor((date.getMonth() + 3) / 3), 
    "S": date.getMilliseconds()
  };
  if (/(y+)/.test(fmt))
    fmt = fmt.replace(RegExp.$1, (date.getFullYear() + "").substr(4 - RegExp.$1.length));
  for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt))
      fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
  return fmt;
}

};

export { Base };
