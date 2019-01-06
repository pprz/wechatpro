import { Base } from '../../utils/base.js';

class Category extends Base {
  constructor() {
    super();
  }

  isStaffToken(callback){
    var param={
      url:'token/isStaffToken',
      sCallback:function(data){
        console.log('!!!isStaffToken',data);
        callback&&callback(data);
      }
    }
    this.request(param);
  }

  postVocationInfo(param,callback){
    var that=this;
    var allParams={
      url:'apply_for_vocation',
      type:'post',
      data: param,
      sCallback:function(data){
        callback&&callback(data);
      },
      eCallback:function(){}
    };
    this.request(allParams);
  }

  /*获得所有分类*/
  getCategoryType(callback) {
    var param = {
      url: 'category/all',
      sCallback: function (data) {
        callback && callback(data);
      }
    };
    this.request(param);
  }
  /*获得某种分类的商品*/
  getProductsByCategory(id, callback) {
    var param = {
      url: 'product/by_category?id=' + id,
      sCallback: function (data) {
        callback && callback(data);
      }
    };
    this.request(param);
  }

  updateSignInfo(callback){

  }
}

export { Category };