// pages/site/sites/sites.js
let calls = require("city.js");
Page({
  
  /**
   * 页面的初始数据
   */
  data: {
    customItem: [],
    detailed: '请选择',
    lock: true,
    look: false,
    name: '',
    tel: '',
    address: '',
    item: null,
    checked: false,
    yonghu:''

  },
  name(e) {
    this.setData({
      name: e.detail.value
    })
  },
  tel(e) {
    this.setData({
      tel: e.detail.value
    })
  },
  address(e) {
    this.setData({
      address: e.detail.value
    })
  },
  fn7(e){
    this.setData({
      checked: e.detail.value
    })
    console.log(this.data.checked)
  },
  bindRegionChange(e){
      this.setData({
        clas:''
      })
    this.setData({
      //拼的字符串传后台
      detailed: e.detail.value[0] + " " + e.detail.value[1] + " " + e.detail.value[2],
      //下拉框选中的值
      region: e.detail.value
    })
    this.setData({
      "AddSite.area": e.detail.value[0] + " " + e.detail.value[1] + " " + e.detail.value[2]
    })
  },
  newad(){
    if (this.data.name && this.data.tel && this.data.AddSite && this.data.address != '') {
     console.log(111);
     wx.getStorage({
       key: 'uname',
       success: res=> {
         wx.request({
           url: 'http://localhost/wbphp/site.php',
           method: 'POST',
           header: {
             "content-type": 'application/x-www-form-urlencoded'
           },
           data: {
             name: this.data.name,
             cell: this.data.tel,
             cite: this.data.AddSite.area,
             address: this.data.address,
             tel: res.data,
             state:this.data.checked
           },
            success:res=>{
              console.log(res.data);
              this.setData({
                yonghu:res.data
              })
              if (res.data === 1) {
                wx.showToast({
                  title: '添加成功',
                  icon: 'success',
                  duration: 2000
                })
                setTimeout(()=>{
                    wx.navigateBack({
                      delta:1
                    })
                },2500)
              }
            }
         })
       },
       fail: res => {
         wx.showToast({
           title: '请先去登陆',
           icon: 'loading',
           duration: 2000
         })
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
  save(){
    if (this.data.name && this.data.tel && this.data.AddSite && this.data.address != '') {
      wx.request({
        url: 'http://localhost/wbphp/xg2.php',
        method: 'POST',
        header: {
          "content-type": 'application/x-www-form-urlencoded'
        },
        data: {
          tel:this.data.yonghu,
          id: this.data.item.id,
          name: this.data.name,
          cell: this.data.tel,
          cite: this.data.AddSite.area,
          address: this.data.address,
          state:this.data.checked
        },
        success: res => {
          if (res.data === 1) {
            wx.showToast({
              title: '修改成功',
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
    }else{
      wx.showToast({
        title: '输入内容为空',
        icon: 'loading',
        duration: 2000
      })
    }
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
            url: 'http://localhost/wbphp/dzmove.php',
            method: 'POST',
            header: {
              "content-type": 'application/x-www-form-urlencoded'
            },
            data: {
              id: this.data.item.id,
            },
            success: res => {
              console.log(res.data);
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
    console.log(options)
    if(options != null){
      this.setData({
        item: JSON.parse(options.item)
      })
      if (this.data.item.look) {
        this.setData({
          look: true,
          lock: false
        })
        wx.request({
          url: 'http://localhost/wbphp/xg1.php',
          method: 'POST',
          header: {
            "content-type": 'application/x-www-form-urlencoded'
          },
          data: {
            id: this.data.item.id
          },
          success: res => {
            this.setData({
              name: res.data.name,
              tel: res.data.cell,
              detailed: res.data.city,
              address: res.data.address
            })
          }
        })
      } 
    }
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