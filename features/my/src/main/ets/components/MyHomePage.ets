@Component
export struct MyHomePage {
  build() {
    Row() {
      Column() {
        Text("我的页面")
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}
