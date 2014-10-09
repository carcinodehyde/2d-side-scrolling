package Entity 
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Spritemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	/**
	 * ...
	 * @author dd.Production()
	 */
	public class Char1 extends Entity 
	{
		private var img:Spritemap;
		public var moveSpeed:int = 90;
		public var friction:int = 0.2;
		
		
		/*
		 *  @hadap[0] = LEFT
		 *  @hadap[1] = RIGHT
		 * */
		public var hadap:int = 0;
		
		private var playerX:int;
		private var playerY:int;
		
		public function getX():int
		{
			return playerX;
		}
		
		public function getY():int
		{
			return playerY;
		}
		
		public function Char1() 
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
			type = "player";
			
			graphic = img;
		}
		
		override public function update():void
		{
			Input.define("all", Key.UP, Key.DOWN, Key.RIGHT, Key.LEFT, Key.Z);
			
			if (Input.check(Key.LEFT) && !Input.check(Key.Z))
			{
				
				img.play("left");
				this.x -= moveSpeed * FP.elapsed;
				
				hadap = 0;
			}
			else if (Input.check(Key.RIGHT) && !Input.check(Key.Z))
			{
				img.play("right");
				this.x += moveSpeed * FP.elapsed;
				
				hadap = 1;
			}
			
			
			if (Input.check(Key.UP) && !Input.check(Key.Z))
			{
				if (hadap == 1)
				{
					img.play("right");
				}
				else if (hadap == 0)
				{
					img.play("left");
				}
				this.y -= moveSpeed * FP.elapsed;
			}
			else if (Input.check(Key.DOWN) && !Input.check(Key.Z))
			{
				if (hadap == 1)
				{
					img.play("right");
				}
				else if (hadap == 0)
				{
					img.play("left");
				}
				this.y += moveSpeed * FP.elapsed;
			}
			//INPUT ATTACK
		
			if (Input.check(Key.Z))
			{
				if (hadap == 0)
				{
					img.play("slash_L");
				}
				
				if (hadap == 1)
				{
					img.play("slash_R");
				}
				if (collide("enemy", this.x, this.y))
				{
					trace("collide");
				}
				
			}
			
			
			if (Input.released("all"))
			{
				idleAnim();
			}
			
			
			//BOUND
			if (this.y <= 310)
			{
				this.y = 310;
			}
			else if (this.y >= 450)
			{
				this.y = 450;
			}
			if (this.x <= FP.width - 630)
			{
				this.x = 10;
			}
			
			
			
			//COLLISION
			playerX = this.x;
			playerY = this.y;
		}
		
		private function idleAnim():void
		{
			if (hadap == 1)
			{
				img.play("idle_R");
			}
			else if (hadap == 0)
			{
				img.play("idle_L");
				
			}
		}
	}

}