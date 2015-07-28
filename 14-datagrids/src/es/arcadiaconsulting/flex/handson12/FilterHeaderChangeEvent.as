package es.arcadiaconsulting.flex.handson12
{
	import flash.events.Event;

	public class FilterHeaderChangeEvent extends Event
	{
		
		protected var _newValue:String;
		
		public function FilterHeaderChangeEvent(newValue:String)
		{
			super("filterChanged");
			this._newValue = newValue;
		}
		
		public function get newValue():String {
			return this._newValue;
		}
		
		public function set newValue(newValue:String):void {
			this._newValue = newValue;
		}
		
	}
}