# assignment3
initial push
assignment3

Assignment is a fake email experience.

Submitted by: Alex Hachey

Time spent: 9 hours spent in total.
User Stories

The following required functionality is complete:

On dragging the message left...
Initially, the revealed background color is gray.
As the reschedule icon is revealed, it starts semi-transparent and becomes fully opaque. If released at this point, the message returns to its initial position.
After 60 pts, the later icon moves with the translation and the background changes to yellow.
Upon release, the message continues to reveal the yellow background. When the animation it complete, it shows the reschedule options.
After 200 pts, the icon changes to the list icon and the background color changes to brown.
Upon release, the message continues to reveal the brown background. When the animation is complete, it shows the list options.
User can tap to dismissing the reschedule and list options. After the reschedule and list options are dismissed, you can see the message finish the hide animation.
On dragging the message right...
Initially, the revealed background color is gray.
As the archive icon is revealed, it starts semi-transparent and become fully opaque. If released at this point, the message returns to its initial position.
After 60 pts, the archive icon starts moving with the translation and the background changes to green.
Upon release, the message continues to reveal the green background. When the animation is complete, it hides the message.
After 200 pts, the icon changes to the delete icon and the background color changes to red.
Upon release, the message continues to reveal the red background. When the animation is complete, it hides the message.
Optional: Panning from the edge reveals the menu
Optional: If the menu is being revealed when the user lifts their finger, it continues revealing.
Optional: If the menu is being hidden when the user lifts their finger, it continues hiding.


Here's a walkthrough of implemented user stories:

LiceCap. https://github.com/adhachey/assignment3/blob/master/Screencast.gif

Notes

Describe any challenges encountered while building the app.

Understanding/managing the differences between CGfloat and CGpoint.  Animating the BG color changes.  It was unclear that I was initially panning the entire view the message was in, not understanding why the bg color wasn't showing.  

License

Copyright [2016] [Alex HAchey]

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
