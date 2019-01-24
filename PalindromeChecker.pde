public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String sWord)
{
  String qq = onlyLetters(noSpaces(noCapitals(sWord)));
  String bb = onlyLetters(noSpaces(noCapitals(reverse(sWord))));
  if(bb.equals(qq)){
    return true;
  }
  return false;
}
public String reverse(String sWord)
{
    String bb = "";
  for(int i = 0; i < sWord.length();i++){
    bb += sWord.substring(sWord.length()-i-1,sWord.length()-i);
  }
  return bb;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
public String noSpaces(String sWord){
  String gg = "";
  for(int i = 0; i<sWord.length(); i++){
    if(!sWord.substring(i,i+1).equals(" ")){
      gg+=sWord.substring(i,i+1);
  }
}
return gg;
}
public String onlyLetters(String sString){
  String gg = "";
  for(int i = 0; i < sString.length();i++){
    if(Character.isLetter(sString.charAt(i))){
      gg +=sString.charAt(i);
    }
  }
  return gg;
}
