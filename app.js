import { Token } from 'utils/token.js';

App({
  onLaunch: function () {
    var token = new Token('manager');
    token.verify();
  },

  onShow: function () {

  },
})

      // json文件注释
      // {
      //   "pagePath": "pages/home/home",
      //   "text": "指南",
      //   "iconPath": "imgs/toolbar/tabzhinan.png",
      //   "selectedIconPath": "imgs/toolbar/tabzhinan_h1.png"
      // },