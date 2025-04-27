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
 * @file: JHShimmerTextView.ets
 * @description: 文字微光效果
 * @author: Haomissyou <xjh093@126.com>
 * @since: 2025-04-27 15:59:02
 * @version: 1.0.0
 */

@Component
export default struct JHShimmerTextView {
  @Prop text: ResourceStr = '文字微光效果~Haomissyou';
  @Prop color: Color = Color.Red;
  @Prop shimmerColor: Color = Color.White;
  @Prop fontSize: number | string | Resource = 24;
  @Prop fontWeight: number | FontWeight | string = FontWeight.Bold;
  @Prop progressValue: number = 0;
  @Prop animationDuration: number = 3000;
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
        .fontColor(this.color)
        .fontWeight(this.fontWeight)
        .textOverflow({ overflow: TextOverflow.Ellipsis })
        .maxLines(1)
        .blendMode(BlendMode.DST_IN, BlendApplyType.OFFSCREEN)
    }
    .linearGradient({
      direction: GradientDirection.Right,
      colors: [
        [this.color, 0.0],
        [this.color, this.progressValue-0.1],
        [this.shimmerColor, this.progressValue],
        [this.color, this.progressValue+0.1],
        [this.color, 1.0]
      ]
    })
    .blendMode(BlendMode.SRC_OVER, BlendApplyType.OFFSCREEN)
    .onAppear(() => {
      this.startAnimation();
    })
  }
}