// pages/theme/theme.js
import { Theme } from 'theme-model.js';
var theme = new Theme(); //实例化  主题列表对象
Page({

  /**
   * 页面的初始数据
   */
  data: {

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.data.id = options.id;
    this.data.name = options.name;   
    this._lodaData();
  },

  onReady:function(options){
    wx.setNavigationBarTitle({
      title: this.data.name
    });
  },

  _lodaData:function(callback){
    var that=this;
    theme.getArticlesData(this.data.id,(data)=>{
      that.setData({
        themeInfo:data
      });
    });
  }, /*跳转到详情*/
  onArticlesItemTap: function (event) {
    var id = theme.getDataSet(event, 'id');
    wx.navigateTo({
      url: '../articles/article?id=' + id
    })
  }

 
})