package es.arcadiaconsulting.flex.handson12
{
	import mx.controls.TextInput;

	/**
	 * Custom component that extends mx.controls.TextInput by forcing  displayAsPassword as true
	 * @author ggomez
	 * 
	 */
	public class PasswordTextInput extends TextInput
	{
		/**
		 * Default constructor. Sets the  displayAsPassword as true
		 * 
		 */		
		public function PasswordTextInput()
		{
			super();
			this.displayAsPassword = true;
		}
		
		/**
		 * Overrides parent implementation by always setting the value for displayAsPassword to true  
		 * @param value
		 * 
		 */		
		override public function set displayAsPassword(value:Boolean):void {
			super.displayAsPassword = true;
		}
		
	}
}