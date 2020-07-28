// pages/car/shop/shop.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    shopData:null,
    number:0,
    id:0
  },
  add() {
    let number = this.data.number;
    number++;
    this.setData({
      number
    })
  },
  sub() {
    let number = this.data.number;
    if (number > 1) {
      number--;
    }
    this.setData({
      number
    })
  },
  que(){
    wx.request({
      url: 'http://localhost/wbphp/add.php',
      data: {
        id: this.data.id,
        number: this.data.number
      },
      success: res => {
        console.log(res.data);
        if(res.data === 1){
            wx.navigateBack({
                delta:1
            })
        }
      }
    })
  },
  move(){
    wx.showModal({
      title: '提示',
      content: '是否确定删除此地址',
      cancelText: '取消',
      confirmText: '确定',
      success: res => {
        if (res.confirm) {
          wx.request({
            url: 'http://localhost/wbphp/gwmove.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              id: this.data.id,
            },
            success: res => {
              if (res.data === 1) {
                wx.showToast({
                  title: '删除成功',
                  icon: 'success',
                  duration: 2000
                })
                setTimeout(() => {
                  wx.navigateBack({
                    delta: 1
                  })
                }, 2000)
              }
            }
          })
        }
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
   
    this.setData({
        id:options.shop_id
    })
    // 读取商品id

    wx.request({
      url: 'http://localhost/wbphp/shop1.php',
      method: 'POST',
      header: {
        "content-type": 'application/x-www-form-urlencoded'
      },
      data: {
        id: options.shop_id
      },
      success: res => {
        this.setData({
          shopData: res.data,
          number:res.data.number
        })
      }
    })

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