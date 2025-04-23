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
 * @file: JHGradientTextView.ets
 * @description: 渐变文字效果
 * @author: Haomissyou <xjh093@126.com>
 * @since: 2025-04-23 10:38:25
 * @version: 1.0.0
 */

@Component
export default struct JHGradientTextView {
  @Prop text: ResourceStr = '文字渐变效果~Haomissyou';
  @Prop fontSize: number | string | Resource = 24;
  @Prop fontWeight: number | FontWeight | string = FontWeight.Bold;
  @Prop colors: Array<[ResourceColor, number]> = [["#ff0000", 0], ["#00ff00", 0.5], ["#0000ff", 1]]

  build() {
    Row() {
      Text(this.text)
        .fontSize(this.fontSize)
        .fontWeight(this.fontWeight)
        .blendMode(BlendMode.DST_IN, BlendApplyType.OFFSCREEN)
    }
    .linearGradient({
      direction: GradientDirection.Right,
      colors: this.colors
    })
    .blendMode(BlendMode.SRC_OVER, BlendApplyType.OFFSCREEN)
  }
}

