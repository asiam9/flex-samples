package es.arcadiaconsulting.flex.handson15
{
	import mx.events.ValidationResultEvent;
	import mx.validators.ValidationResult;
	import mx.validators.Validator;


	/**
	 * Validator for passwrod match. The other password value must be providec via property valueToMathc 
	 * @author ggomez
	 * 
	 */
	public class PasswordMatchValidator extends Validator
	{
		
		protected var _valueToMatch:String = null;
		
		public function PasswordMatchValidator()
		{
			super();
		}
		
		override protected function doValidation(value:Object):Array {
			var result:Array = super.doValidation(value);
			if(this._valueToMatch != value) {
				result.push(new ValidationResult(true, null, null, "Las passwords no concuerdan"));
			} 
			return result;
		}
		
		public function set valueToMatch(valueToMatch:String):void {
			this._valueToMatch = valueToMatch;
		}
		
		public function get valueToMatch():String {
			return this._valueToMatch;
		}
		
	}
}