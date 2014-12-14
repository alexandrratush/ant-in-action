package com.core
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	public class Main extends Sprite
	{
		public function Main()
		{
			var tf:TextField = new TextField();
			tf.text = "Hello World of ANT!";
			tf.autoSize = TextFieldAutoSize.RIGHT;
			addChild(tf);
		}
	}
}