package  
{
	/**
	 * ...
	 * @author dd.Production()
	 */
	public class Asset 
	{
		[Embed(source = "../Assets/char1.png")]
		public static const charBattler1:Class;
		
		[Embed(source="../Assets/tile.png")]
		public static const tile1:Class;
		
		[Embed(source = "../Assets/BlueSky.png")]
		public static const back:Class;
		
		[Embed(source = "../Assets/enemy.png")]
		public static const enemySprite:Class;
		
		public function Asset() 
		{
			
		}
		
	}

}