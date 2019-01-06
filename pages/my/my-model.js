import {Base} from '../../utils/base.js';

class My extends Base{
  constructor(){
    super();
  }

  CurrentRole(callback){
    var param = {
      url: 'token/getCurrentRole',
      sCallback: function (data) {
        callback && callback(data);
      }
    }
    this.request(param);
  }

  getMyVocation(callback){
    var param={
      url:'vocation/getMyVocation',
      sCallback:function(data){
        callback&&callback(data);
      }
    }
    this.request(param);
  }

  deleteVocation(id,callback){
    var param={
      url:'cannel_vocation/'+id,
      sCallback:function(data){
        callback&&callback(data);
      }
    }
    this.request(param);
  }


  asignVocation(id, callback) {
    var param = {
      url: 'vocation/' + id,
      sCallback: function (data) {
        callback && callback(data);
      }
    }
    this.request(param);
  }
}

export {My};