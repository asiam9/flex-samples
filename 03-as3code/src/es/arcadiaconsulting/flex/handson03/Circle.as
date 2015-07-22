package es.arcadiaconsulting.flex.handson03
{
	/**
	 * Class implementaiton by cicle. It's defined by it's radius 
	 * @author ggomez
	 * 
	 */	
	public class Circle implements IFigure
	{
		protected var _radius:Number;
		
		public function Circle(radius:Number)
		{
			this._radius = radius;
		}
		
		public function getArea():Number {
			return Math.PI * Math.pow( this._radius, 2);
		}
		
		public function get radius():Number {
			return this._radius;
		}
	}
}