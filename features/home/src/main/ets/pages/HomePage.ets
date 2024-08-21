import { Banner } from '../components/Banner';
import { HotProducts } from '../components/HotProducts';
import { SelectedProducts } from '../components/SelectedProducts';

@Component
export struct HomePage {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Text("首页")
        .fontSize(24)
        .fontWeight(700)
        .width('100%')
        .textAlign(TextAlign.Start)
        .padding({ left: 16 })
        .fontFamily('HarmonyHeiTi-Bold')
        .lineHeight(33)

      Scroll() {
        Column() {
          Banner()
          HotProducts()
          SelectedProducts()
        }
      }

    }
    .width("100%")
    .height("100%")
    .backgroundColor("#F1F3F5")

  }
}


