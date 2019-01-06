// pages/home/home.js
import { Home } from 'home-model.js';
var home = new Home(); //实例化 首页 对象
Page({

  /**
   * 页面的初始数据
   */
  data: {
    loadingHidden: false
  },
  onLoad: function () {
    this._loadData();
  },

  /*加载所有数据*/
  _loadData: function (callback) {
    var that = this;

    // 获得bannar信息
    home.getBannerData((data) => {
      that.setData({
        bannerArr: data,
      });
    });

    /*获取主题信息*/
    home.getThemeData((data) => {
      that.setData({
        themeArr: data,
        loadingHidden: true
      });
    });

    /*获取单品信息*/
    home.getArticleData((data) => {
      that.setData({
        articlesArr: data
      });
      callback && callback();
    });
  },

  /*跳转到详情*/
  onArticlesItemTap: function (event) {
    var id = home.getDataSet(event, 'id');
    wx.navigateTo({
      url: '../articles/article?id=' + id
    })
  },

  /*跳转到主题列表*/
  onThemesItemTap: function (event) {
    var id = home.getDataSet(event, 'id');
    var name = home.getDataSet(event, 'name');
    wx.navigateTo({
      url: '../theme/theme?id=' + id + '&name=' + name
    })
  },

  /*下拉刷新页面*/
  onPullDownRefresh: function () {
    this._loadData(() => {
      wx.stopPullDownRefresh()
    });
  },

  //分享效果
  onShareAppMessage: function () {
    return {
      title: '零食商贩 Pretty Vendor',
      path: 'pages/home/home'
    }
  }


})