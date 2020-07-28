// pages/shop/shop.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    storage:'',
    shopData:null,
    totalPrice:0,
    sum:0,
    price:0,
    selectAllStatus: false,
  },

  goHome() {
    wx.switchTab({
      url: '/pages/home/home',
      success(res) {
        console.log(res);
      }
    })
  },
  revise(e) {
    let id = e.currentTarget.dataset.time;
    wx.navigateTo({
      url: `/pages/shop/car/car?shop_id=${id}`
    })
  },
  selectList(e) {
    const index = e.currentTarget.dataset.index;    // 获取data- 传进来的index
    let carts = this.data.shopData;                    // 获取购物车列表
    const selected = carts[index].selected;         // 获取当前商品的选中状态
    
    carts[index].selected = !selected;              // 改变状态
    this.setData({
      shopData: carts
    });
    this.getnumber();                           // 重新获取总价
  },
  getnumber(){
    let shop = this.data.shopData;
    let price = 0;
    let number = 0;
    for(let i= 0; i < shop.length;i++){
        if(shop[i].selected){
            price += shop[i].number * shop[i].price;
            number += shop[i].number * 1;
        }
    }
    this.setData({
      shopData:shop,
      price:price,
      sum: number
    })
  },
  selectAll(e){
    let selectAllStatus = this.data.selectAllStatus; 
    selectAllStatus = !selectAllStatus;
    let carts = this.data.shopData;
    for (let i = 0; i < carts.length; i++) {
      carts[i].selected = selectAllStatus;            // 改变所有商品状态
    } 
    this.setData({
      selectAllStatus: selectAllStatus,
      shopData: carts
    });
    this.getnumber(); 

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
      success: res=> {
        this.setData({
          storage: res.data
        })
        wx.request({
          url: 'http://localhost/wbphp/shop.php',
          method: 'POST',
          header: {
            "content-type": 'application/x-www-form-urlencoded'
          },
          data: {
            tel: res.data
          },
          success:res=>{
            if (res.data !== '') {
              this.setData({
                shopData: res.data
              })
            }
          }
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