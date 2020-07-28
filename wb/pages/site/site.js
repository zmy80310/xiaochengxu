// pages/site/site.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    shopData:null,
    i: 0,
    sex:0
  },
  option(e) {
    wx.setStorage({
      key: 'index',
      data: e.target.dataset.index,
      success: res => {
        wx.getStorage({
          key: 'index',
          success: res => {
            console.log(res.data);
            this.setData({
              i: res.data
            })
          },
        })
      }
    })
  },
  newlt(e) {
    let item = {
      look: true,
      id: e.target.dataset.id
    }
    let id = JSON.stringify(item
    );
    wx.navigateTo({
      url: `sites/sites?item=${id}`,
    })
  },
  newly() {
    wx.navigateTo({
      url: 'sites/sites',
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    //获取收货地址
    wx.getStorage({
      key: 'uname',
      success: res => {
        wx.request({
          url: 'http://localhost/wbphp/dz.php',
          method: 'POST',
          header: {
            "content-type": 'application/x-www-form-urlencoded'
          },
          data: {
            tel: res.data
          },
          success: res => {
            console.log(res.data)
            this.setData({
              shopData: res.data
            })
          }
        })
      },
    })
      wx.getStorage({
          key: 'index',
          success: res => {
            console.log(res.data);
            this.setData({
              i: res.data
            })
          },
        })
  },  

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})