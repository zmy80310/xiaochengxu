// pages/home/info/join/join.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      shopData:null,
      number:1
  },
  add(){
    let number = this.data.number;
    number++;
      this.setData({
        number
      })
  },
  sub(){
    let number = this.data.number;
    if(number > 1){
      number--;
    }
    this.setData({
      number
    })
  },
  submit(){
      wx.getStorage({
        key: 'uname',
        success:res=> {
          let tel = res.data;
          let data1 = new Date();
          let time = data1.getTime();
          wx.request({
            url: 'http://localhost/wbphp/gouwu.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              src: this.data.shopData.src,
              name: this.data.shopData.name,
              price: this.data.shopData.price,
              number: this.data.number,
              text:this.data.shopData.text,
              tel: tel,
              time: time,
            },
            success:res=>{
              if (res.data === 2) {
                wx.showToast({
                  title: '添加成功',
                  icon: 'success',
                  duration: 2000
                })
              }else if(res.data === 1){
                  wx.request({
                    url: 'http://localhost/wbphp/gouwu22.php',
                    method: 'POST',
                    header: {
                      "content-type": 'application/x-www-form-urlencoded'
                    },
                    data: {
                      tel: tel,
                      src: this.data.shopData.src
                    },
                    success:res=>{
                      for (let x of res.data) {
                        if (this.data.number > 1) {
                          var n1 = x.number * 1 + this.data.number * 1;
                        } else {
                          var n1 = (x.number - 0) + 1;
                        }
                      }
                      wx.request({
                        url: 'http://localhost/wbphp/gouwu1.php',
                        method: 'POST',
                        header: {
                          "content-type": 'application/x-www-form-urlencoded'
                        },
                        data: {
                          tel: tel,
                          src: this.data.shopData.src,
                          number: n1
                        },
                        success:res=>{
                          if (res.data === 1) {
                            wx.showToast({
                              title: '添加成功',
                              icon: 'success',
                              duration: 2000
                            })
                          }
                        }
                      })
                    }
                  })
              }
            }
          })
        },
        fail: res => {
          if (res.data == null) {
            wx.showToast({
              title: '请前去登陆',
              icon: 'loading',
              duration: 2000
            })
            setTimeout(() => {
              wx.navigateTo({
                url: '/pages/login/login',
              })
            }, 3000)
          }
        }
      })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.request({
      url: 'http://localhost/wbphp/info.php',
      data: {
        id: JSON.parse(options.id)
      },
      success: res => {
        this.setData({
          shopData: res.data
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