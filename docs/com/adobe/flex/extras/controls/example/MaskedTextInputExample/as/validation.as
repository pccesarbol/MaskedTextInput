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

import mx.core.UIComponent;
import mx.events.ValidationResultEvent;
		
[Bindable]
private var valids:Object = {polNum:false, dob:false, ssn:false};

private function handleInValid(event:Event):void
{
	if(event.type=="invalid")
	{
		event.preventDefault();
		UIComponent(event.currentTarget).errorString = "";
		if(UIComponent(event.currentTarget) == polNum)
		{
			valids.polNum = false;
		}
		else if(UIComponent(event.currentTarget) == dob)
		{
			errDOB.visible = true;
			valids.dob = false;
		}
		else if(UIComponent(event.currentTarget) == ssn)
		{
			errSSN.visible = true;
			valids.ssn = false;
		}
	}
	check();
	
 }
 
private function handleValid(event:ValidationResultEvent):void	
{
	if(event.type=="valid")
	{
		if(event.currentTarget.source == polNum)
		{
			valids.polNum = true;
		}
		else if(event.currentTarget.source == dob)
		{
			errDOB.visible = false;
			valids.dob = true;
		}
		else if(event.currentTarget.source == ssn)
		{
			errSSN.visible = false;
			valids.ssn = true;
		}
	}
	check();
 }

private function print():void
{
	detailsPanel.visible = true;
	if(showFullText.selected)
	{
		policy.text = "Policy Number :"+polNum.fullText;
		dt.text = "Date :"+dob.fullText;
		ssno.text = "SSN :"+ssn.fullText;
	}
	else
	{
		policy.text = "Policy Number :"+polNum.text;
		dt.text = "Date :"+dob.text;
		ssno.text = "SSN :"+ssn.text;
	}
	
	
}

private function check():void
{
	
	if(valids.polNum && valids.dob && valids.ssn)
	{
		submit.enabled = true;
	}
	else
		submit.enabled = false;
}