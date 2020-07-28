// pages/home/home.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      swiper:null,
      banner:null,
      swiper2:null,
      banner2:null,
      home:null
  },  
  tiao(){
      wx.navigateTo({
        url: '/pages/home/search/search',
      })
  },
  info(e){
    let id = JSON.stringify(e.currentTarget.dataset.id);
    wx.navigateTo({
      url: `/pages/home/info/info?id=${id}`,
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
      //请求轮播图
      wx.request({
        url: 'http://localhost/wbphp/swiper.php',
        success:res=>{
          this.setData({
              swiper:res.data
          })
        }
      })

      //请求banner图标
      wx.request({
        url: 'http://localhost/wbphp/banner.php',
        success:res=>{
          this.setData({
            banner: res.data
          })
        }
      })

      //请求轮播图2
    wx.request({
      url: 'http://localhost/wbphp/swiper1.php',
      success: res => {
        this.setData({
          swiper2: res.data
        })
      }
    })

    // 请求banner2
    wx.request({
      url: 'http://localhost/wbphp/banner1.php',
      success: res => {
        this.setData({
          banner2: res.data
        })
      }
    })

    //请求渲染商品
    wx.request({
      url: 'http://localhost/wbphp/home.php',
      success:res=>{
        this.setData({
           home:res.data
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