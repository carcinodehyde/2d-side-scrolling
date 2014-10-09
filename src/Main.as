package 
{
	
	import Map.Map1;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	[SWF(width = "640", height = "480")]
	/**
	 * ...
	 * @author dd.Production()
	 */
	public class Main extends Engine
	{
		
		public function Main():void 
		{
			super(640, 480, 30, false);
			
			FP.world = new Map1();
			FP.console.enable();
			
		}
		
		override public function init():void
		{
			trace("it's working");
		}
		
		
	}
	
}