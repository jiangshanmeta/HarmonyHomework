import { ProductModel } from '../model/ProductModel'

@Component
export struct SelectedProducts {
  @State productList: ProductModel[] = [
    {
      id: 1,
      img: $r("app.media.tutorial_pic1"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 2,
      img: $r("app.media.tutorial_pic2"),
      title: "Phone",
      desc: "TBC",
    },
    {
      id: 3,
      img: $r("app.media.tutorial_pic3"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 4,
      img: $r("app.media.tutorial_pic4"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 5,
      img: $r("app.media.tutorial_pic5"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 6,
      img: $r("app.media.tutorial_pic6"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 7,
      img: $r("app.media.tutorial_pic7"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 8,
      img: $r("app.media.tutorial_pic8"),
      title: "MetaBook",
      desc: "TBC",
    },

  ]

  build() {
    Column() {
      Text('精選商品')
        .fontColor('#182431')
        .fontSize(16)
        .fontWeight(500)
        .fontFamily('HarmonyHeiTi-medium')
        .textAlign(TextAlign.Start)
        .padding({ left: 16, right: 16 })
        .width('100%')

      List({ space: 12 }) {
        ForEach(this.productList, (item: ProductModel) => {
          ListItem() {
            productItem({ productItem: item })

          }
        }, (item: ProductModel) => `${item.id}`)
      }
      .scrollBar(BarState.Off)
      .padding({ left: 16, right: 16 })

    }
    .padding({
      top: 20,
      bottom: 60
    })
  }
}

@Component
struct productItem {
  @Prop productItem: ProductModel;

  build() {
    Row() {
      Column() {
        Text(this.productItem.title)
          .height(19)
          .width('100%')
          .fontSize(14)
          .textAlign(TextAlign.Start)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .fontWeight(400)
          .margin({ top: 4 })

        Text(this.productItem.desc)
          .height(32)
          .width('100%')
          .fontSize(12)
          .textAlign(TextAlign.Start)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(2)
          .fontWeight(400)
          .fontColor('rgba(0, 0, 0, 0.6)')
          .margin({ top: 5 })
      }
      .height('100%')
      .layoutWeight(1)
      .alignItems(HorizontalAlign.Start)
      .margin({ right: 12 })

      Image(this.productItem.img)
        .objectFit(ImageFit.Cover)
        .height(64)
        .width(108)
        .borderRadius(16)
    }
    .width('100%')
    .height(88)
    .borderRadius(16)
    .backgroundColor(Color.White)
    .padding(12)
    .alignItems(VerticalAlign.Top)
  }
}