package es.arcadiaconsulting.flex.handson09
{

	import flash.events.Event;
	import flash.events.TextEvent;
	
	import mx.controls.TextArea;

	[Event(name="sameValueEvent", type="es.arcadiaconsulting.flex.handson09.SameValueEvent")]
	public class TextAreaWithEvent extends TextArea
	{
		
		protected var _matchingValue:String; 
		
		public function TextAreaWithEvent()
		{
			super();
			addEventListener(Event.CHANGE, onTextInput); 
		}
		
		public function onTextInput(event:Event):void {
			if(this.text == this._matchingValue) {
				var sameValueEvent:Event = new SameValueEvent(this.text);
				sameValueEvent.target; 
				dispatchEvent(sameValueEvent);
			}
		}
		
		public function set matchingValue(matchingValue:String):void {
			this._matchingValue = matchingValue;
		}
		
		public function get matchingValue():String {
			return this._matchingValue
		}
	}
}