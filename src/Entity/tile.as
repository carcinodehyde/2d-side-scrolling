package Entity 
{
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.FP;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author dd.Production()
	 */
	public class tile extends Entity
	{
		public var img:Tilemap;
		
		public function tile(tilemap:*) 
		{
			img = new Tilemap(tilemap, 1600, 480, 32, 32);
			
			
			graphic = img;
		}
		
	}

}