package es.arcadiaconsulting.flex.handson12
{
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import mx.controls.TextInput;
	import mx.controls.advancedDataGridClasses.AdvancedDataGridHeaderRenderer;

	[Event(name="filterChanged", type="es.arcadiaconsulting.flex.handson09.SameValueEvent")]
	public class FilterHeaderRenderer extends AdvancedDataGridHeaderRenderer
	{
		
		protected var filterText:TextInput;
		
		public function FilterHeaderRenderer()
		{
			super();
		}
		
		
		override protected function createChildren():void {
			super.createChildren();
			this.filterText = new TextInput();
			this.filterText.width = 100;
			this.filterText.addEventListener(Event.CHANGE,  textChanged);
			this.addChildAt(this.filterText, 1);
		}
		
		override protected function updateDisplayList(unscaledWidth:Number,
				unscaledHeight:Number):void {
			super.updateDisplayList(unscaledWidth, unscaledHeight);
		this.filterText.setActualSize(this.filterText.getExplicitOrMeasuredWidth(),
				this.filterText.getExplicitOrMeasuredHeight());
		}		
		
		public function mouseClick(event:Event):void {
			event.stopImmediatePropagation();
		}
		
		public function textChanged(event:Event):void {
			this.owner.dispatchEvent(new FilterHeaderChangeEvent(this.filterText.text));
		}
		
	}
}