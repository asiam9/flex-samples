package es.arcadiaconsulting.flex.handson03
{

	/**
	 * Class that represents a rectangle. It's defined by it's both sides 
	 * @author ggomez
	 * 
	 */	
	public class Rectangle extends Square
	{
		protected var _otherSide:Number;
		
		public function Rectangle(side:Number,otherSide:Number)
		{
			super(side);
			this._otherSide = otherSide;
		}
		
		override public function getArea():Number {
			return this._side * this._otherSide;
		}
		
		public function get otherSide():Number {
			return this._otherSide;
		}
		
	}
}