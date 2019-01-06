import {Base} from '../../utils/base.js';

class Article extends Base{
  constructor(){
    super();
  }

  getDetailInfo(id,callback){
    var self=this;
    var param={
      url:'article/'+id,
      sCallback:function(data){
        var date = new Date(data.publish_time*1000);
        data.publish_time = self.dateFtt("yyyy-MM-dd hh:mm:ss", date);
        callback&&callback(data);
      }
    };
    this.request(param);
  }
};
export {Article}