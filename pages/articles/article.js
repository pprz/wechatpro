// pages/articles/article.js
import {Article} from 'article-model.js';
var article=new Article();
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
    //传入在home page完成 此处用options接收
    var id=options.id;
    this.data.id=id;
    this._loadData();
  },
  _loadData:function(){
    var that=this;
    article.getDetailInfo(this.data.id,(data)=>{
      this.setData({
        article:data
      });
    });
  },
  
})