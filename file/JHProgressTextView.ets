/*
 * Copyright (c) 2025 Haomissyou. All rights reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * @file: JHProgressTextView.ets
 * @description: 歌词文字效果
 * @author: Haomissyou <xjh093@126.com>
 * @since: 2025-04-23 14:48:39
 * @version: 1.0.0
 */

@Component
export default struct JHProgressTextView {
  @Prop text: ResourceStr = '歌词文字效果~Haomissyou';
  @Prop fontSize: number | string | Resource = 24;
  @Prop fontWeight: number | FontWeight | string = FontWeight.Bold;
  @Prop progressValue: number = 0;
  @Prop animationDuration: number = 3000;
  @Prop startColor: ResourceColor = Color.Red;
  @Prop endColor: ResourceColor = Color.Gray;
  @Prop repeatCount: number = -1;

  // 动画
  private startAnimation() {
    animateTo({
      duration: this.animationDuration,
      curve: Curve.Linear,
      iterations: this.repeatCount,
      onFinish: () => {
        this.progressValue = 0;
      }
    }, () => {
      this.progressValue = 1;
    });
  }

  build() {
    Row() {
      Text(this.text)
        .fontSize(this.fontSize)
        .fontColor(this.endColor)
        .fontWeight(this.fontWeight)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .blendMode(BlendMode.DST_IN, BlendApplyType.OFFSCREEN)
    }
    .linearGradient({
      direction: GradientDirection.Right,
      colors: [
        [this.startColor, 0.0],
        [this.startColor, this.progressValue],
        [this.endColor, this.progressValue],
        [this.endColor, 1.0]
      ]
    })
    .blendMode(BlendMode.SRC_OVER, BlendApplyType.OFFSCREEN)
    .onAppear(() => {
      this.startAnimation();
    })
  }
}
