 void main(){
  int? flag ;
   palindrome(word){
    
    for(int i = 0 ; i<word.length/2 ;i++){
        int flag = 0;
        if(word[i]!=word[word.length-1-i]){
            flag =1;
        }
      
    }
     if(flag==0){
        print("Palindrome");
    }else{
      print("Not a palindrome");
    } 
}

palindrome("arshad");
 }
 
 
 
 
 
 