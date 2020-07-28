// pages/mine/mine.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      look:false,
      src:'',
      name:''
  },
  site(){
    wx.navigateTo({
      url: '/pages/site/site',
    })
  },
  quit(){
    wx.showModal({
      title: '提示',
      content: '是否退出登录',
      cancelText: '取消',
      confirmText: '确定',
      success: res => {
        if (res.confirm) {
          wx.removeStorage({
            key: 'uname',
            success: res => {
              this.setData({
                look: false
              })
            },
          })
        }
      }
    })
  },
  login(){
    wx.navigateTo({
      url: '/pages/login/login',
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
    wx.getStorage({
      key: 'uname',
      success: res => {
        if (res.data != '') {
          this.setData({
            look: true,
            tel:res.data
          })
        }
      },
    })
    wx.getUserInfo({
      success: res=> {
        console.log(res);
        var avatarUrl = 'userInfo.avatarUrl';
        var nickName = 'userInfo.nickName';
        this.setData({
          src: res.userInfo.avatarUrl,
          name: res.userInfo.nickName,
        })
      }
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