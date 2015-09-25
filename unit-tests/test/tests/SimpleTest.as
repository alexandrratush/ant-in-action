package tests 
{
	import flexunit.framework.Assert;
	
	public class SimpleTest 
	{
		private var _testClass:Test;
		
		public function SimpleTest() 
		{
			
		}
		
		[Before]
		public function before():void
		{
			_testClass = new Test();
		}
		
		[After]
		public function after():void
		{
			
		}
		
		[Test(description="complete")]
		public function testComplete():void
		{
			var expected:Number = 1;
			var result:Number = _testClass.copyValue(expected);
			
			Assert.assertEquals(expected, result);
		}
		
		[Test(description="fail")]
		public function testFail():void
		{
			var expected:Number = 1;
			var result:Number = _testClass.copyValue(2);
			
			Assert.assertEquals(expected, result);
		}
		
	}

}