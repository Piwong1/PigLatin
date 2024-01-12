public void setup() 
{
  String[] lines = {"beast","dough","happy","question","star","three","eagle","try"};
  System.out.println("there are " + lines.length + " lines");
  for (int i = 0 ; i < lines.length; i++) 
  {
    System.out.println(pigLatin(lines[i]));
  }
}
public void draw()
{
        //not used
}
public int findFirstVowel(String word){
  for(int i=0;i<word.length();i++){
    if(word.substring(i,i+1).equals("a")||word.substring(i,i+1).equals("e")||
    word.substring(i,i+1).equals("i")||word.substring(i,i+1).equals("o")
    ||word.substring(i,i+1).equals("u")){
      return i;
    }
    
  } 
  return -1;
}
public int findQU(String word){
  for(int i=2;i<word.length();i++){
    if(word.substring(i-2,i).equals("qu")){
      return i-2;
    }
    
  } 
  return -1;
}

  

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if(findFirstVowel(sWord) == -1)
  {
    return sWord + "ay";
  }
  else if(findFirstVowel(sWord)==0){
    return sWord+"way";
  }
  else if(findFirstVowel(sWord)!=0&&findFirstVowel(sWord)!=-1){
    return sWord.substring(findFirstVowel(sWord))+sWord.substring(0,findFirstVowel(sWord))+
    "ay";
  }
  else if(findQU(sWord)==0){
   return sWord.substring(2)+"quay"; 
  }
  
  

  else
  {
    return "ERROR!";
  }
}
