@Component
export struct CategoryMainPage {
  build() {
    Row() {
      Column() {
        Text($r("app.string.category_content"))
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}
