// pages/category/category.js
import { Category } from 'category-model.js';
var category = new Category();  //实例化 home 的推荐页面
Page({

  /**
   * 页面的初始数据
   */
  data: {
    selectedRegion: ['辽宁省', '大连市', '甘井子区'],
    currentMenuIndex: 0,

  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function(options) {
    this._loadData();
  },

  vocationFormSubmit:function(e){
    var self=this;
    var vocationInfo=e.detail.value;
    vocationInfo.update_time = new Date(vocationInfo.startDate).getTime();
    vocationInfo.delete_time = new Date(vocationInfo.endDate).getTime();
    delete vocationInfo['startTime'];
    delete vocationInfo['endTime'];
    console.log('vocationInfo', vocationInfo);
    category.postVocationInfo(vocationInfo,(res)=>{
      console.log(res);
    });
  },

  formSubmit: function(e) {
    var self=this;
    var signInfo = e.detail.value;
    delete signInfo['region'];
    delete signInfo['imgUpdate'];
    signInfo.main_img_url = '/'+self.data.imgInfo.slice(1,-1);
    signInfo.province = self.data.selectedRegion[0];  
    signInfo.city = self.data.selectedRegion[1];
    signInfo.country = self.data.selectedRegion[2];
    if (signInfo.name != '' && signInfo.age != '' && signInfo.detail != '' &&signInfo.marriage != '' 
      && signInfo.mobile != '' && signInfo.sex != '' && signInfo.summary != '' && signInfo.staus != '' && signInfo.race != '') {
      wx.request({
        method: 'POST',
        url: 'http://neo.cn/api/v1/sign',
        data: signInfo,
        header: {
          'content-type': 'application/json',
          'token': wx.getStorageSync('token')
        },
        success: function(res) {
          if(res.data.code!=201){
            wx.showModal({
              title: '提交失败',
              content: res.errMsg
            })
          }
          wx.showModal({
            title: '提交成功',
            content: '提交成功'
          })
        }
      })
    } else {
      wx.showModal({
        title: '提交失败',
        content: '请填写完整信息',
      })
    }

  },

  regionChange: function(e) {
    this.setData({
      selectedRegion: e.detail.value
    });
  },

  bindStartDateChange:function(e){
    this.setData({
      startDate:e.detail.value
    });
  },

  bindEndDateChange: function (e) {
    var startDate = new Date(this.data.startDate);
    var endDate = new Date(e.detail.value);
    if (this.data.startDate == null || startDate.getTime() > endDate.getTime()){
      wx.showModal({
        title: '请检查请假日期',
        content: '先填写开始时间并保证小于等于结束时间'
      })
    }else{
    this.setData({
      endDate: e.detail.value
    });
    }
  },

  changeCategory:function(event){
    var index = event.currentTarget.dataset['index'],
      id = event.currentTarget.dataset['id'];
    this.setData({
      currentMenuIndex: index
    });
  },

  /*加载所有数据*/
  _loadData: function(callback) {
    var that=this;
    var categoryTypeArr = [
      {
      "id":"1",
      "name": "预备役报道"
     },
      {
        "id": "2",
        "name": "请假"
      }
    ];
    category.isStaffToken((isStaff)=>{
      that.setData({
        categoryTypeArr: categoryTypeArr,
        isStaff:isStaff
      })
    });

  },

  editAddress: function(event) {
    wx.chooseAddress({
      success: function(res) {
        var addressInfo = {
          name: res.userName,
          mobile: res.telNumber,
          totalDetail: res.detailInfo
        }
      }
    })
  },

  updateImg: function() {
    var self = this;
    wx.chooseImage({
      count: 1,
      sizeType: ['original', 'compressed'],
      sourceType: ['album', 'camera'],
      success(res) {
        // tempFilePath可以作为img标签的src属性显示图片
        const tempFilePaths = res.tempFilePaths;
        self.updateImgtoServer(tempFilePaths[0]);
      }
    })
  },
  updateImgtoServer: function(filePath) {
    var self = this;
    wx.uploadFile({
      url: 'http://neo.cn/api/v1/sign/imgUpdate',
      filePath: filePath,
      name: 'image',
      success(res) {
        self.setData({
          imgInfo: res.data
        })
      }
    })
  }
})