package Map 
{
	import Entity.Char1;
	import Entity.Enemy;
	import Entity.tile;
	import net.flashpunk.Entity;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Backdrop;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	
	/**
	 * ...
	 * @author dd.Production()
	 */
	public class Map1 extends World 
	{
		
		
		
		private var chara:Char1 = new Char1();
		private var enemy1:Enemy = new Enemy();
		
		private var e:Entity = new Entity;
		private var ubin:tile = new tile(Asset.tile1);
		private var ubin2:tile = new tile(Asset.tile1);
		private var tanah:tile = new tile(Asset.tile1);
		
		private var paralax:Backdrop = new Backdrop(Asset.back);
		
		private var cameraSpeed:int = 90;
		
		public function Map1() 
		{
			chara.x = 20;
			chara.y = 350;
			chara.layer = 2;
			add(chara);
			
			enemy1.x = 400;
			enemy1.y = 330;
			enemy1.layer = 2;
			add(enemy1);
			
			ubin.img.setRect(0, 10, 50, 5, 20);
			ubin.layer = 12;
			add(ubin);
			
			ubin2.img.setRect(0, 9, 50, 2, 1);
			
			ubin2.layer = 11;
			//add(ubin2);
			
			tanah.img.setRect(0, 12, 50, 3, 29);
			tanah.layer = 12;
			//add(tanah);
			
			e.graphic = paralax;
			e.layer = 13;
			paralax.scrollX = 0.5;
			add(e);
		}
		
		override public function update():void
		{
			super.update();
			
			e.x -= 2;
			
			
			if (chara.x >= FP.camera.x + 320)
			{
				FP.camera.x += cameraSpeed * FP.elapsed;
			}
			
			if (Input.check(Key.D))
			{
				FP.camera.x += cameraSpeed;
			}
			if (Input.check(Key.A))
			{
				FP.camera.x -= cameraSpeed;
			}
			
			
		}
		
	}

}