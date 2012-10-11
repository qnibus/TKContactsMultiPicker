Feature
====================

Simple contacts multi picker for iOS (Non ARC).
This is customizable, simple, fast controller for contacts.
iOS6 Update patch (Privacy settings & Retina 4inch)

<ul>
    <li>Supported iOS6</li>
    <li>Non ARC</li>
    <li>Completed memory leak test</li>
    <li>Person multi select</li>
    <li>Group select</li>
    <li>Supported LocalizedIndexedCollation</li>
</ul>

====================

Usage
====================

As shown below where you want to put your code
<pre>
TKPeoplePickerController *controller = [[[TKPeoplePickerController alloc] initPeoplePicker] autorelease];
controller.actionDelegate = self;
controller.modalPresentationStyle = UIModalPresentationFullScreen;
[self presentViewController:controller animated:YES completion:nil];
</pre>

Delegate, using the contact information processing
<pre>
- (void)tkPeoplePickerController:(TKPeoplePickerController*)picker didFinishPickingDataWithInfo:(NSArray*)contacts;
- (void)tkPeoplePickerControllerDidCancel:(TKPeoplePickerController*)picker;
</pre>

====================

License
====================

Copyright 2012 TABKO Inc.
 

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

====================

Our works
====================

<a href="http://hapsee.com" target="_blank">Than Happiness through the iLife!</a>

<img src="http://hapsee.com/wp-content/uploads/2012/09/Home-Qnote-Icon.png" alt="Qnote" /> &nbsp; <img src="http://hapsee.com/wp-content/uploads/2012/09/Home-PicTok-Icon.png" alt="PicTok" /> &nbsp; <img src="http://hapsee.com/wp-content/uploads/2012/09/Home-FotoCookie-Icon.png" alt="FotoCookie" /> &nbsp; <img src="http://hapsee.com/wp-content/uploads/2012/09/Home-ThumbPlus-Icon.png" alt="Thumb+" />

====================

ScreenShot
====================

<img src="https://raw.github.com/qnibus/TKContactsMultiPicker/master/Screenshot1.png" alt="Tabko Contact Multi Picker" /> &nbsp; <img src="https://raw.github.com/qnibus/TKContactsMultiPicker/master/Screenshot2.png" alt="Tabko Contact Multi Picker" />
