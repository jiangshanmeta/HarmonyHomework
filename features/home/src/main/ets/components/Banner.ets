import { BannerModel } from '../model/BannerModel'

@Component
export struct Banner {
  @State bannerList: BannerModel[] = [
    {
      id: 1,
      src: $r("app.media.banner_pic1"),
    },
    {
      id: 2,
      src: $r("app.media.banner_pic2"),
    },
    {
      id: 3,
      src: $r("app.media.banner_pic3"),
    },
    {
      id: 4,
      src: $r("app.media.banner_pic2"),
    },
    {
      id: 5,
      src: $r("app.media.banner_pic3"),
    },
  ]

  build() {
    Swiper() {
      ForEach(this.bannerList, (item: BannerModel) => {
        Image(item.src)
          .objectFit(ImageFit.Contain)
          .width("100%")
          .borderRadius(16)
          .padding({
            top: 12,
            left: 16,
            right: 16,
          })

      }, (item: BannerModel) => `${item.id}`)
    }
    .autoPlay(true)
    .loop(true)
    .indicator(
      new DotIndicator()
        .color("#1a000000")
        .selectedColor("#0A59F7")
    )

  }
}