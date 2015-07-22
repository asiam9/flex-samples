package es.arcadiaconsulting.flex.handson03
{

	/**
	 * Class that represents a Square. It's defined by it's side  
	 * @author ggomez
	 * 
	 */	
	public class Square implements IFigure
	{
		
		protected var _side:Number;
		
		public function Square(side:Number)
		{
			this._side = side; 
		}

		public function getArea():Number
		{
			return Math.pow(this._side, 2);
		}
		
		public function get side():Number {
			return this._side;
		}
		
	}
}