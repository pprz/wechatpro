// pages/my/my.js
import {My} from 'my-model.js';
var my=new My();
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
    this._loadData();
  },

  _loadData:function(){
    var self=this;
    my.CurrentRole((role)=>{
      console.log('当前角色：',role);
      self.setData({
        role:role
      });
    });

    my.getMyVocation((vocations)=>{
      var data = vocations,
        startDate = new Date(), endDate = new Date(),
        len = data.length;
      for (let i = 0; i < len; i++) {
        data[i].selectStatus = false; 
        data[i].update_time=my.dateFtt("yyyy-MM-dd",new Date(data[i].update_time*1000));
        data[i].delete_time = my.dateFtt("yyyy-MM-dd", new Date(data[i].delete_time * 1000));
        }

      console.log('data',data);
      self.setData({
        vocations:vocations
      });
    });
  },

  /*选择商品*/
  toggleSelect: function (event) {
    var id = my.getDataSet(event,'id'),
      status = my.getDataSet(event, 'status'),
      index = this._getVocationIndexById(id);
      var vocationTemp=this.data.vocations;
      vocationTemp[index].selectStatus = !status;
      this.setData({
        vocations: vocationTemp
      });
  },

  /*全选*/
  toggleSelectAll: function (event) {
    var status = my.getDataSet(event, 'status') == 'true';
    var data = this.data.vocations,
      len = data.length;
    for (let i = 0; i < len; i++) {
      data[i].selectStatus = !status;
    }
    this.setData({
      vocations: data
    });
  },
 
  /*根据商品id得到 商品所在下标*/
  _getVocationIndexById: function (id) {
    var data = this.data.vocations,
      len = data.length;
    for (let i = 0; i < len; i++) {
      if (data[i].id == id) {
        return i;
      }
    }
  },

  delete:function(event){
    var id = my.getDataSet(event, 'id');
    my.deleteVocation(id,(res)=>{
      console.log('res',res);
      wx.reLaunch({
        url: '../my/my'
      })
    });
  },

  asignVocation:function(event){
    var id = my.getDataSet(event, 'id');
    my.asignVocation(id, (res) => {
      console.log('res', res);
      wx.reLaunch({
        url: '../my/my'
      })
    });
  }

})