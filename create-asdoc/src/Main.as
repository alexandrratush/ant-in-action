package
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * Main class
	 * @author alexandrratush
	 */
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		/**
		 * Test method
		 */
		public function test():void 
		{
			
		}
		
	}
	
}