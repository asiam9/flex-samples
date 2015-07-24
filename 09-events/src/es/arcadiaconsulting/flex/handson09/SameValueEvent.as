package es.arcadiaconsulting.flex.handson09
{
	import flash.events.Event;
	

	/**
	 * The event definition thrown byu TextAreaWithEvent class 
	 * @author ggomez
	 * 
	 */	
	public class SameValueEvent extends Event
	{
		public static const eventType:String = "sameValueEvent";
		
		protected var _matchValue:String;
		
		protected var _date:Date;
		
		public function SameValueEvent(matchValue:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(eventType, bubbles, cancelable);
			this._matchValue = matchValue;
			this._date = new Date();
		}
		
		public function get matchValue():String {
			return this._matchValue;
		}
		
		public function set matchValue(matchValue:String):void {
			this._matchValue = matchValue;
		}
		
		public function get date():Date {
			return this._date;
		}
		
		public function set date(date:Date):void {
			this._date = date;
		}
		
		
	}
}