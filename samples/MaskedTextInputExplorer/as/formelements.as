////////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2003-2006 Adobe Macromedia Software LLC and its licensors.
// All Rights Reserved.
// The following is Sample Code and is subject to all restrictions on such code
// as contained in the End User License Agreement accompanying this product.
// If you have received this file from a source other than Adobe,
// then your use, modification, or distribution of it requires
// the prior written permission of Adobe.
//
////////////////////////////////////////////////////////////////////////////////

import flash.ui.Keyboard;
import flash.events.KeyboardEvent;

private function changeClr():void{
	myMTI.setStyle('cellColor',clr.selectedColor);
}

private function changeErr():void{
	myMTI.setStyle('errorTextColor',err.selectedColor);
}

private function updateClr():void{
	if(clr.selectedColor==0xFF0000)
	 clr.selectedColor=0x008CEA;
	else if(clr.selectedColor==0x008CEA)
	 clr.selectedColor=0xFF0000;
}

private function updateText():void{
	text.text=myMTI.text;
	full.text=myMTI.fullText
}

public function restoreMTIDefaults():void {
	
	req.selected=false;
	adv.selected=false;
	
 	myMTI.clearStyle('cellColor');
	clr.selectedColor=myMTI.getStyle('cellColor');
	
	myMTI.clearStyle('errorTextColor');
	err.selectedColor=myMTI.getStyle('errorTextColor');
}

public function initData():void{
	clr.selectedColor=myMTI.getStyle('cellColor');
	err.selectedColor=myMTI.getStyle('errorTextColor');
}