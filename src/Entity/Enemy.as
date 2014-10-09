package Entity 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.FP;
	import net.flashpunk.Mask;
	import net.flashpunk.masks.Pixelmask;
	
	/**
	 * ...
	 * @author dd.Production()
	 */
	public class Enemy extends Entity 
	{
		private var img:Spritemap;
		
		private var xTarget:Number;
		private var yTarget:Number;
		private var xSpeed:Number;
		private var ySpeed:Number;
		
		private var moveSpeed:int = 3;
		
		public var xDist:Number;
		public var yDist:Number;
		
		public function Enemy() 
		{
			img = new Spritemap(Asset.charBattler1, 64, 64);
			
			img.add("slash_L", [25, 26], 15, false);
			img.add("slash_R", [30, 29], 15, false);
			
			img.add("idle_L", [0], 1, false);
			img.add("idle_R", [31], 1, false);
			
			img.add("left", [17, 19], 8);
			img.add("right", [20, 22], 8);
			
			img.centerOO();
			setHitbox(20, 45, 10, 10);
			type = "enemy";
			
			graphic = img;
			
			/*
			img = new Spritemap(Asset.enemySprite, 85, 85);
			
			img.add("idle", [5], 1, false);
			img.add("leap", [11, 12, 13, 14], 8, true);
			img.centerOO();
			graphic = img;
			
			setHitbox(20, 55, 9, 10);
			type = "enemy";
			*/
			/*
			xDist = xTarget - this.x;
			yDist = yTarget - this.y;
			
			var angle:Number = Math.atan2(yDist, xDist);
			xSpeed = Math.cos(angle) * moveSpeed;
			ySpeed = Math.sin(angle) * moveSpeed;
			*/
			//var xDist:Number = Char1.playerX - x;
		}
		
		override public function update():void
		{
			
			var char:Char1 = new Char1();
			
			xTarget = char.getX();
			
			yTarget = char.getY();
			
			
			for (var i:int = 0; i <= 10; i++)
			{
				/*
				for (var j:int = 0; j <= 10; j++)
				{
					if (this.x > xTarget + 199)
					{
						
						img.play("left");
						this.x -= 1 * FP.elapsed;
					}
					else if (this.x < xTarget + 200)
					{
						img.play("right");
						this.x += 1 * FP.elapsed;
					}
				}
				*/
			}
		}
	}

}