import { ProductModel } from '../model/ProductModel'

@Component
export struct HotProducts {
  @State productList: ProductModel[] = [
    {
      id: 1,
      img: $r("app.media.enablement_pic1"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 2,
      img: $r("app.media.enablement_pic2"),
      title: "Phone",
      desc: "TBC",
    },
    {
      id: 3,
      img: $r("app.media.enablement_pic3"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 4,
      img: $r("app.media.enablement_pic4"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 5,
      img: $r("app.media.enablement_pic5"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 6,
      img: $r("app.media.enablement_pic6"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 7,
      img: $r("app.media.enablement_pic7"),
      title: "MetaBook",
      desc: "TBC",
    },
    {
      id: 8,
      img: $r("app.media.enablement_pic8"),
      title: "MetaBook",
      desc: "TBC",
    },

  ]

  build() {
    Column() {
      Text("热门商品")
        .fontColor('#182431')
        .fontSize(16)
        .fontWeight(500)
        .fontFamily('HarmonyHeiTi-medium')
        .textAlign(TextAlign.Start)
        .padding({ left: 16, right: 16 })
        .width('100%')

      Grid() {
        ForEach(this.productList, (item: ProductModel) => {
          GridItem() {
            ProductItem({ productItem: item })
          }
        }, (item: ProductModel) => `${item.id}`)

      }
      .rowsTemplate('1fr')
      .columnsGap(8)
      .scrollBar(BarState.Off)
      .height(169)
      .padding({ top: 2, left: 16, right: 16 })

    }
    .padding({
      top: 20
    })
  }
}

@Component
struct ProductItem {
  @Prop productItem: ProductModel;

  build() {
    Column() {
      Image(this.productItem.img)
        .width('100%')
        .objectFit(ImageFit.Cover)
        .height(96)
        .borderRadius({
          topLeft: 16,
          topRight: 16
        })
      Text(this.productItem.title)
        .height(19)
        .width('100%')
        .fontSize(14)
        .textAlign(TextAlign.Start)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .fontWeight(400)
        .padding({ left: 12, right: 12 })
        .margin({ top: 8 })
      Text(this.productItem.desc)
        .height(32)
        .width('100%')
        .fontSize(12)
        .textAlign(TextAlign.Start)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(2)
        .fontWeight(400)
        .fontColor('rgba(0, 0, 0, 0.6)')
        .padding({ left: 12, right: 12 })
        .margin({ top: 2 })
    }
    .width(160)
    .height(169)
    .borderRadius(16)
    .backgroundColor(Color.White)

  }
}
