import { CategoryMainPage } from '@ohos/category';
import { HomePage } from '@ohos/home/src/main/ets/pages/HomePage';
import { MyHomePage } from '@ohos/my';

@Entry
@Component
struct Index {
  @State currentIndex:number = 0;
  private tabsController: TabsController = new TabsController();

  @Builder
  tabBarBuilder(title:string,index:number,selectedIcon:Resource,unusedIcon:Resource){
    Column(){
      Image(this.currentIndex === index? selectedIcon:unusedIcon)
        .width(24)
        .height(24)

      Text(title)
        .fontFamily("HarmonyHeiTi-Medium")
        .fontSize(10)
        .fontColor(this.currentIndex === index? "#0A59F7":"rgba(0,0,0,0.60)")
        .textAlign(TextAlign.Center)
        .lineHeight(14)
        .fontWeight(500)
    }
    .width("100%")
    .height("100%")
    .justifyContent(FlexAlign.Center)
    .alignItems(HorizontalAlign.Center)
    .onClick(()=>{
      this.currentIndex = index;
      this.tabsController.changeIndex(index);
    })
  }

  build() {
    Tabs({barPosition:BarPosition.End,controller:this.tabsController}){
      TabContent(){
        HomePage()
      }
      .tabBar(this.tabBarBuilder("首页",0,$r("app.media.home_selected"),$r("app.media.home_normal") ))

      TabContent(){
        CategoryMainPage()
      }
      .tabBar(this.tabBarBuilder("分类",1,$r("app.media.sorter_selected"),$r("app.media.sorter_normal")))

      TabContent(){
        MyHomePage()
      }
      .tabBar(this.tabBarBuilder("我的",2,$r("app.media.mine_selected"),$r("app.media.mine_normal") ))

    }
    .vertical(false)
    .divider({
      strokeWidth:0.5,
      color:"#0D182431"
    })
    .scrollable(false)
    .backgroundColor("#F1f3F5")

  }
}

