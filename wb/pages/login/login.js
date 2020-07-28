// pages/login/login.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      tel:'',
      pwo:''
  },
  tel(e){
    this.setData({
      tel: e.detail.value
    })
  },
  pwo(e){
    this.setData({
      pwo: e.detail.value
    })
  },
  enroll(){
    if(this.data.tel && this.data.pwo != ''){
      let reg = /^1[3-9][0-9]{9}$/;
      if (reg.test(this.data.tel)){
        wx.request({
          url: 'http://localhost/wbphp/login.php',
          method: 'POST',
          header: {
            "content-type": 'application/x-www-form-urlencoded'
          },
          data: {
            tel: this.data.tel,
            pwo: this.data.pwo
          },
          success:res=>{
            console.log(res.data);
            if (res.data === 0) {
              wx.showToast({
                title: '手机号已注册',
                icon: 'loading',
                duration: 2000
              })
            } else if (res.data === 2) {
              wx.showToast({
                title: '注册成功',
                icon: 'success',
                duration: 2000
              })
            } 
          }
        })
      }else{
        wx.showToast({
          title: '手机号有误',
          icon: 'loading',
          duration: 2000
        })
      }
    }else{
      wx.showToast({
        title: '输入内容为空',
        icon: 'loading',
        duration: 2000
      })
    }
  },
  login(){
      if(this.data.tel && this.data.pwo != ''){
        wx.request({
          url: 'http://localhost/wbphp/login1.php',
          data:{
            tel:this.data.tel,
            pwo:this.data.pwo
          },
          success:res=>{
            console.log(res.data);
            if(res.data === 1){
              wx.showToast({
                title: '正在登陆',
                icon: 'loading',
                mask: true,
                duration: 2000
              })
              wx.setStorage({
                key: 'uname',
                data: this.data.tel,
              })
              setTimeout(() => {
                wx.showToast({
                  title: '登陆成功',
                  icon: 'success'
                })
              }, 2500)
              setTimeout(() => {
                wx.switchTab({
                  url: '/pages/home/home',
                })
              }, 3000)
            }else{
              wx.showToast({
                title: '密码错误',
                icon: 'loading',
                duration: 2000
              })
            }
          }
        })

      }else{
        wx.showToast({
          title: '输入内容为空',
          icon: 'loading',
          duration: 2000
        })
      }
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