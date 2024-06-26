global class jrsl_UnsubscribeParse {

   
   @InvocableMethod (label='Choices Parser' 
                     description='Takes a collection of text from multi-choice selection in a screen and returns a collection of Campaigns')

   public static List<list<String>> CheckValues(List<string> values) {

      if(!(values.isEmpty())){

          string tempStr = values[0];

          List<String> lstnew = tempStr.split(';');

          List<String> idList = new List<String>( (List<String>)lstnew );
          
          list<list<String>> finalLst = new list<list<String>>();

          finalLst.add(lstnew);

          return finalLst;
		
          
      }

      else return null;

   }

}