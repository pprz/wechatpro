import { Base } from '../../utils/base.js';

class Theme extends Base {
  constructor() {
    super();
  }

  /*文章*/
  // 对应主题的id
  getArticlesData(id, callback) {
    var self=this;
    var param = {
      url: 'theme/' + id,
      sCallback: function (data) {
        var date = new Date(data.publish_time * 1000);
        data.publish_time = self.dateFtt("yyyy-MM-dd hh:mm:ss", date);
        callback && callback(data);
      }
    };
    this.request(param);
  }
};

export { Theme };