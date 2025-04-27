# HarmonyCodeLib

---

003-文字微光效果（JHShimmerTextView.ets）

![%E6%88%AA%E5%B1%8F2025-04-27%2016.10.25.png](https://github.com/xjh093/HarmonyCodeLib/blob/main/images/%E6%88%AA%E5%B1%8F2025-04-27%2016.10.25.png)

```
import JHShimmerTextView from '../view/JHShimmerTextView'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        JHShimmerTextView()
      }
      .backgroundColor(Color.White)
      .borderRadius(33)
      .padding({ top: 14, bottom: 14, left: 20, right: 20 })
      .margin({ top: 15 })

      Row() {
        JHShimmerTextView({
          text: '清明时节雨纷纷，路上行人欲断魂。',
          color: Color.White,
          shimmerColor: Color.Red
        })
      }
      .backgroundColor(Color.White)
      .borderRadius(33)
      .padding({ top: 14, bottom: 14, left: 20, right: 20 })
      .margin({ top: 15 })
    }
    .backgroundColor('#F1F3F5')
    .width('100%')
    .height('100%')
  }
}
```
--- 2025-04-27 16:15:11

---

002-文字歌词效果（JHProgressTextView.ets）

![截屏2025-04-23 16 52 50](https://github.com/xjh093/HarmonyCodeLib/blob/main/images/%E6%88%AA%E5%B1%8F2025-04-23%2016.52.50.png)

```
import JHProgressTextView from '../view/JHProgressTextView'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        JHProgressTextView()
      }
      .backgroundColor(Color.White)
      .borderRadius(33)
      .padding({ top: 14, bottom: 14, left: 20, right: 20 })
      .margin({ top: 15 })

      Row() {
        JHProgressTextView({text: '清明时节雨纷纷，路上行人欲断魂。'})
      }
      .backgroundColor(Color.White)
      .borderRadius(33)
      .padding({ top: 14, bottom: 14, left: 20, right: 20 })
      .margin({ top: 15 })
    }
    .backgroundColor('#F1F3F5')
    .width('100%')
    .height('100%')
  }
}
```
--- 2025-04-23 17:51:36

---

001-文字渐变效果（JHGradientTextView.ets）

![截屏2025-04-23 14 03 38](https://github.com/xjh093/HarmonyCodeLib/blob/main/images/%E6%88%AA%E5%B1%8F2025-04-23%2014.03.38.png)

```
import JHGradientTextView from '../view/JHGradientTextView'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row() {
        JHGradientTextView()
      }
      .backgroundColor(Color.White)
      .borderRadius(33)
      .padding({ top: 14, bottom: 14, left: 20, right: 20 })
      .margin({ top: 15 })

      Row() {
        JHGradientTextView({
          text: '今天是个好日子~666',
          fontSize: 30,
          fontWeight: FontWeight.Normal,
          colors: [
            ["#ff0000", 0],
            ["#ffff00", 1]
          ]
        })
      }
      .backgroundColor(Color.White)
      .borderRadius(33)
      .padding({ top: 14, bottom: 14, left: 20, right: 20 })
      .margin({ top: 15 })
    }
    .backgroundColor('#F1F3F5')
    .width('100%')
    .height('100%')
  }
}
```
--- 2025-04-23 17:51:25
